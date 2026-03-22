package com.unity3d.ads.core.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: OfferwallShowEvent.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class OfferwallShowEvent {

    /* compiled from: OfferwallShowEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Show extends OfferwallShowEvent {
        @NotNull
        public static final Show INSTANCE = new Show();

        private Show() {
            super(null);
        }
    }

    public /* synthetic */ OfferwallShowEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private OfferwallShowEvent() {
    }
}
