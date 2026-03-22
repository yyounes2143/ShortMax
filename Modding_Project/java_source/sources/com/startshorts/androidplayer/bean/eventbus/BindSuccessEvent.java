package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BindSuccessEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BindSuccessEvent {
    public static final int BIND_EMAIL = 2;
    public static final int BIND_FACEBOOK = 1;
    public static final int BIND_GOOGLE = 4;
    public static final int BIND_HUAWEI = 5;
    public static final int BIND_PHONE = 3;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int bindType;

    /* compiled from: BindSuccessEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BindSuccessEvent(int i10) {
        this.bindType = i10;
    }

    public static /* synthetic */ BindSuccessEvent copy$default(BindSuccessEvent bindSuccessEvent, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = bindSuccessEvent.bindType;
        }
        return bindSuccessEvent.copy(i10);
    }

    public final int component1() {
        return this.bindType;
    }

    @NotNull
    public final BindSuccessEvent copy(int i10) {
        return new BindSuccessEvent(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BindSuccessEvent) && this.bindType == ((BindSuccessEvent) obj).bindType) {
            return true;
        }
        return false;
    }

    public final int getBindType() {
        return this.bindType;
    }

    public int hashCode() {
        return Integer.hashCode(this.bindType);
    }

    @NotNull
    public String toString() {
        return "BindSuccessEvent(bindType=" + this.bindType + ')';
    }
}
