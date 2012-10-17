{-#LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ >= 702
{-#LANGUAGE Safe #-}
#endif
{-#LANGUAGE ForeignFunctionInterface, EmptyDataDecls #-}

{#context prefix="opencc" #}

module Language.OpenCc.Internal.OpenCc where

#if __GLASGOW_HASKELL__ >= 702
import Foreign.Safe
#else
import Foreign
#endif
import Foreign.C

import GHC.Word
import Language.OpenCc.Internal.C2HS

#include <opencc/opencc.h>


type RawOpenCc = Ptr ()
type RawUcs4 = Word32


{#fun open as ^ { withUTF8CString * `String' } -> `RawOpenCc' id #}

{#fun close as ^ { id `RawOpenCc' } -> `Int' #}

{#fun convert_utf8 as ^ {id `RawOpenCc', withUTF8CStringLen'* `String' &} -> `Maybe String' peekNullableUTF8CString* #}
