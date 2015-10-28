using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Manifold.Interop.Scripts;
using Manifold.Interop;


namespace $safeprojectname$
{
    public partial class $safeprojectname$ : UserControl, Manifold.Interop.Scripts.IEventsConnection
    {
        
        // access to mfd objects at run time
        // gets set up at load
        Manifold.Interop.Application app;
        Manifold.Interop.Document doc;
        Manifold.Interop.ComponentSet comps;

        public $safeprojectname$()
        {
            InitializeComponent();
        }

        public void ConnectEvents(Events ev)
        {
            ev.AddinLoaded += new Events.AddinLoadedEventHandler(ev_AddinLoaded);
            ev.ComponentDataChanged += new Events.ComponentDataChangedEventHandler(ev_ComponentDataChanged);
            ev.ComponentNameChanged += new Events.ComponentNameChangedEventHandler(ev_ComponentNameChanged);
            ev.ComponentProjectionChanged += new Events.ComponentProjectionChangedEventHandler(ev_ComponentProjectionChanged);
            ev.ComponentsAdded += new Events.ComponentsAddedEventHandler(ev_ComponentsAdded);
            ev.ComponentSelectionChanged += new Events.ComponentSelectionChangedEventHandler(ev_ComponentSelectionChanged);
            ev.ComponentsRemoved += new Events.ComponentsRemovedEventHandler(ev_ComponentsRemoved);
            ev.ComponentStateChanged += new Events.ComponentStateChangedEventHandler(ev_ComponentStateChanged);
            ev.DocumentClosed += new Events.DocumentClosedEventHandler(ev_DocumentClosed);
            ev.DocumentCreated += new Events.DocumentCreatedEventHandler(ev_DocumentCreated);
            ev.DocumentOpened += new Events.DocumentOpenedEventHandler(ev_DocumentOpened);
            ev.DocumentSaved += new Events.DocumentSavedEventHandler(ev_DocumentSaved);
            ev.WindowActivated += new Events.WindowActivatedEventHandler(ev_WindowActivated);


        }

        void ev_WindowActivated(object sender, WindowEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_DocumentSaved(object sender, DocumentEventArgs Args)
        {
            MessageBox.Show("Document Saved");
        }

        void ev_DocumentOpened(object sender, DocumentEventArgs Args)
        {
            MessageBox.Show("Document Opened");
        }

        void ev_DocumentCreated(object sender, DocumentEventArgs Args)
        {
            MessageBox.Show("Document Created");
        }

        void ev_DocumentClosed(object sender, DocumentEventArgs Args)
        {
            MessageBox.Show("Document Closed");
        }

        void ev_ComponentStateChanged(object sender, ComponentEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_ComponentsRemoved(object sender, DocumentEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_ComponentSelectionChanged(object sender, ComponentEventArgs Args)
        {
            throw new NotImplementedException();

        }

        void ev_ComponentsAdded(object sender, DocumentEventArgs Args)
        {
            throw new NotImplementedException();

        }

        void ev_ComponentProjectionChanged(object sender, ComponentEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_ComponentNameChanged(object sender, ComponentEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_ComponentDataChanged(object sender, ComponentEventArgs Args)
        {
            throw new NotImplementedException();
        }

        void ev_AddinLoaded(object sender, DocumentEventArgs Args)
        {

            app = Args.Document.Application;
            doc = Args.Document;
            comps = doc.ComponentSet;

        }



    }
}
