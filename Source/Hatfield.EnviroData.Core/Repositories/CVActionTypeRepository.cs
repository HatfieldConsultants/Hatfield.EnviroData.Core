using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hatfield.EnviroData.Core.Repositories
{
    public class CVActionTypeRepository : Repository<CV_ActionType>
    {
        public CVActionTypeRepository(IDbContext dbContext)
            : base(dbContext)
        {
        }

        public CV_ActionType GetActionTypeCVByName(string name)
        {
            var result = _dbContext.Query<CV_ActionType>().Where(x => x.Name == name).FirstOrDefault();

            return result;
        }

        public void AddActionTypeCV(CV_ActionType cv)
        {
            var dbContext = (ODM2Entities)_dbContext;

            dbContext.CV_ActionType.Add(cv);
        }

        public IQueryable<CV_ActionType> GetAll()
        {
            var dbContext = (ODM2Entities)_dbContext;

            return dbContext.CV_ActionType.AsQueryable();                                                   
        }
    }
}

