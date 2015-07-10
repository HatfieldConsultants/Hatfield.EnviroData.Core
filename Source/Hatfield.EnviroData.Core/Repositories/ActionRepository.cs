using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hatfield.EnviroData.Core.Repositories
{
    public class ActionRepository : Repository<Action>, IActionRepository
    {
        private static readonly string ISChildOfRelationshipCV = "Is child of";
        public ActionRepository(IDbContext dbContext)
            : base(dbContext)
        {
        }

        public Action GetActionById(int Id)
        {
            var matchedAction = _dbContext.Query<Action>().Where(x => x.ActionID == Id).FirstOrDefault();

            return matchedAction;
        }

        public IEnumerable<Action> GetAllSampleCollectionActions()
        {
            var dbContext = (ODM2Entities)_dbContext;
            var sampleCollectionActions = (from action in dbContext.Actions
                                          join relatedAction in dbContext.RelatedActions
                                          on action.ActionID equals relatedAction.RelatedActionID
                                          where relatedAction.RelationshipTypeCV == ISChildOfRelationshipCV
                                          select action)
                                          .Distinct()
                                          .OrderBy(x => x.BeginDateTime);

            return sampleCollectionActions.ToList();
                                                    
        }
    }
}