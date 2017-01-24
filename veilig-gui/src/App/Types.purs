module App.Types where

import Data.Lens
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Signal.Channel (CHANNEL)
import Cells.Types as Cells
import Columns.Types as Columns
import Console.Types as Console
import BackendConnection.Types as BackendConnection
import Notebook.Types (Notebook)

data Action
    = CellsAction Cells.Action
    | ColumnsAction Columns.Action
    | ConsoleAction Console.Action
    | BackendConnectionAction (BackendConnection.Action Notebook)
    | CheckNotebook
    | NoOp

newtype State = State
    { _cellsState              :: Cells.State
    , _columnsState            :: Columns.State
    , _consoleState            :: Console.State
    , _backendConnectionState  :: BackendConnection.State Notebook
    }

-- Autogenerated lens for cellsState 
cellsState  :: Lens' State  Cells.State
cellsState  = lens
    (\(State  o) -> o._cellsState )
    (\(State  o) -> (\newValue -> State  (o { _cellsState  = newValue } ) ) )


-- Autogenerated lens for columnsState 
columnsState  :: Lens' State  Columns.State
columnsState  = lens
    (\(State  o) -> o._columnsState )
    (\(State  o) -> (\newValue -> State  (o { _columnsState  = newValue } ) ) )


-- Autogenerated lens for consoleState 
consoleState  :: Lens' State  Console.State
consoleState  = lens
    (\(State  o) -> o._consoleState )
    (\(State  o) -> (\newValue -> State  (o { _consoleState  = newValue } ) ) )

-- Autogenerated lens for backendConnectionState 
backendConnectionState  :: Lens' State  (BackendConnection.State Notebook)
backendConnectionState  = lens
    (\(State  o) -> o._backendConnectionState )
    (\(State  o) -> (\newValue -> State  (o { _backendConnectionState  = newValue } ) ) )
