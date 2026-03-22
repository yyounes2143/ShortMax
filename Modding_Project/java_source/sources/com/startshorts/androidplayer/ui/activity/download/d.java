package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadManagerModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: DownloadManagerModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f45208a;

        @NotNull
        public final ApiErrorState a() {
            return this.f45208a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f45208a, ((a) obj).f45208a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45208a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadDownloadListFailed(state=" + this.f45208a + ')';
        }
    }

    /* compiled from: DownloadManagerModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<DownloadManagerItem> f45209a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull List<DownloadManagerItem> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f45209a = list;
        }

        @NotNull
        public final List<DownloadManagerItem> a() {
            return this.f45209a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f45209a, ((b) obj).f45209a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45209a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowDownloadList(list=" + this.f45209a + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
