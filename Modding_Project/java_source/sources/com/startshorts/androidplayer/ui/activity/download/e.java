package com.startshorts.androidplayer.ui.activity.download;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadedDramaModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {

    /* compiled from: DownloadedDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends e {

        /* renamed from: a  reason: collision with root package name */
        private final int f45245a;

        public a(int i10) {
            super(null);
            this.f45245a = i10;
        }

        public final int a() {
            return this.f45245a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f45245a == ((a) obj).f45245a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f45245a);
        }

        @NotNull
        public String toString() {
            return "QueryDramaList(dramaId=" + this.f45245a + ')';
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
