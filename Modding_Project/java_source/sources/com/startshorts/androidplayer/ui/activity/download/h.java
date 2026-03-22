package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadingDramaModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class h {

    /* compiled from: DownloadingDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f45249a;

        @NotNull
        public final ApiErrorState a() {
            return this.f45249a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f45249a, ((a) obj).f45249a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45249a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadDownloadListFailed(state=" + this.f45249a + ')';
        }
    }

    /* compiled from: DownloadingDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<DownloadingDramaInfo> f45250a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull List<DownloadingDramaInfo> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f45250a = list;
        }

        @NotNull
        public final List<DownloadingDramaInfo> a() {
            return this.f45250a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f45250a, ((b) obj).f45250a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45250a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowDownloadList(list=" + this.f45250a + ')';
        }
    }

    public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private h() {
    }
}
