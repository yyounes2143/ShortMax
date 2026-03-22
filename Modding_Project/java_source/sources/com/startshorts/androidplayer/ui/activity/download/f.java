package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadedDramaModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class f {

    /* compiled from: DownloadedDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f45246a;

        @NotNull
        public final ApiErrorState a() {
            return this.f45246a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f45246a, ((a) obj).f45246a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45246a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadDownloadListFailed(state=" + this.f45246a + ')';
        }
    }

    /* compiled from: DownloadedDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<DownloadedDramaInfo> f45247a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull List<DownloadedDramaInfo> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f45247a = list;
        }

        @NotNull
        public final List<DownloadedDramaInfo> a() {
            return this.f45247a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f45247a, ((b) obj).f45247a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45247a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowDownloadList(list=" + this.f45247a + ')';
        }
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
