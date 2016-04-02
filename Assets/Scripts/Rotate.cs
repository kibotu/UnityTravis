using UnityEngine;

namespace Assets.Scripts
{
    public class Rotate : MonoBehaviour
    {

        private float x = 0;
        private float y = 0;
        private float z = 0;

        void Update ()
        {
            transform.rotation = Quaternion.Euler(new Vector3(++x, ++y, ++z));
        }
    }
}
