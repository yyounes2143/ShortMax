package com.facebook.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FacebookGamingAction.kt */
@Metadata
/* loaded from: classes3.dex */
public enum GamingAction {
    ContextChoose("context_choose"),
    JoinTournament("join_tournament");
    
    @NotNull
    private final String rawValue;

    GamingAction(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
