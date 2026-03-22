package com.facebook.login;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: CodeChallengeMethod.kt */
@Metadata
/* loaded from: classes3.dex */
public enum CodeChallengeMethod {
    S256("S256"),
    PLAIN("plain");

    CodeChallengeMethod(String str) {
    }

    /* synthetic */ CodeChallengeMethod(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "S256" : str);
    }
}
