package com.startshorts.androidplayer.viewmodel.discover;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingTabViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class g {

    /* compiled from: DiscoverRankingTabViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends g {

        /* renamed from: a  reason: collision with root package name */
        private final int f48527a;

        public a(int i10) {
            super(null);
            this.f48527a = i10;
        }

        public final int a() {
            return this.f48527a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f48527a == ((a) obj).f48527a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48527a);
        }

        @NotNull
        public String toString() {
            return "InitLoad(parentTabId=" + this.f48527a + ')';
        }
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private g() {
    }
}
