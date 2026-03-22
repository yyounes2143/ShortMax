package com.amazonaws.internal.keyvaluestore;

import java.security.Key;
/* loaded from: classes2.dex */
interface KeyProvider {
    Key a(String str) throws KeyNotGeneratedException;

    Key b(String str) throws KeyNotFoundException;

    void c(String str);
}
