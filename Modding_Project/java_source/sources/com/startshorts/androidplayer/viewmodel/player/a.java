package com.startshorts.androidplayer.viewmodel.player;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.player.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0670a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48932a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48933b;

        public C0670a(int i10, int i11) {
            super(null);
            this.f48932a = i10;
            this.f48933b = i11;
        }

        public final int a() {
            return this.f48932a;
        }

        public final int b() {
            return this.f48933b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0670a)) {
                return false;
            }
            C0670a c0670a = (C0670a) obj;
            if (this.f48932a == c0670a.f48932a && this.f48933b == c0670a.f48933b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48932a) * 31) + Integer.hashCode(this.f48933b);
        }

        @NotNull
        public String toString() {
            return "OnUpdated(playbackTime=" + this.f48932a + ", totalTime=" + this.f48933b + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
