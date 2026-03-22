package com.facebook.appevents;

import kotlin.Metadata;
/* compiled from: FlushReason.kt */
@Metadata
/* loaded from: classes3.dex */
public enum FlushReason {
    EXPLICIT,
    TIMER,
    SESSION_CHANGE,
    PERSISTED_EVENTS,
    EVENT_THRESHOLD,
    EAGER_FLUSHING_EVENT
}
