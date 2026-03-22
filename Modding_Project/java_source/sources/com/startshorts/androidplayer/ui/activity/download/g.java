package com.startshorts.androidplayer.ui.activity.download;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadingDramaModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class g {

    /* compiled from: DownloadingDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends g {

        /* renamed from: a  reason: collision with root package name */
        private final int f45248a;

        public a(int i10) {
            super(null);
            this.f45248a = i10;
        }

        public final int a() {
            return this.f45248a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f45248a == ((a) obj).f45248a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f45248a);
        }

        @NotNull
        public String toString() {
            return "QueryDramaList(dramaId=" + this.f45248a + ')';
        }
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private g() {
    }
}
