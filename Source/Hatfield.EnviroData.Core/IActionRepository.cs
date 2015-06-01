using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hatfield.EnviroData.Core
{
    public interface IActionRepository : IRepository<Action>
    {
        IEnumerable<Action> GetAllSampleCollectionActions();
        Action GetActionById(int Id);
    }
}
