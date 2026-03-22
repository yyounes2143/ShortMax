package com.facebook.login;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultAudience.kt */
@Metadata
/* loaded from: classes3.dex */
public enum DefaultAudience {
    NONE(null),
    ONLY_ME("only_me"),
    FRIENDS("friends"),
    EVERYONE("everyone");
    
    @Nullable
    private final String nativeProtocolAudience;

    DefaultAudience(String str) {
        this.nativeProtocolAudience = str;
    }

    @Nullable
    public final String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}
