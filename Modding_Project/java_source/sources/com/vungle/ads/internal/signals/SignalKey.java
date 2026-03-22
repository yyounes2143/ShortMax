package com.vungle.ads.internal.signals;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SignalKey.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SignalKey {
    public static final int AD_LOADED_PLAYED_DURATION = 110;
    public static final int AD_SIGNAL = 106;
    public static final int DURATION_AFTER_PREVIOUS_LOAD = 109;
    public static final int EVENT_ID = 107;
    @NotNull
    public static final SignalKey INSTANCE = new SignalKey();
    public static final int SCREEN_ORIENTATION = 108;
    public static final int SESSION_COUNT = 103;
    public static final int SESSION_CREATION_TIME = 100;
    public static final int SESSION_DEPTH = 104;
    public static final int SESSION_DURATION = 102;
    public static final int SESSION_ID = 101;
    public static final int TEMPLATE_SIGNAL = 500;
    public static final int UNCLOSED_AD = 105;

    private SignalKey() {
    }
}
