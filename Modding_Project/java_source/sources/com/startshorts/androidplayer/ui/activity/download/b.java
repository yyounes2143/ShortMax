package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadEvent.kt */
@Metadata
/* loaded from: classes7.dex */
public class b {

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private List<DownloadTaskInfo> f45202a;

        public a(@NotNull List<DownloadTaskInfo> taskList) {
            Intrinsics.checkNotNullParameter(taskList, "taskList");
            this.f45202a = taskList;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f45202a, ((a) obj).f45202a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45202a.hashCode();
        }

        @NotNull
        public String toString() {
            return "AddDownloadTaskEvent(taskList=" + this.f45202a + ')';
        }
    }

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.ui.activity.download.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0630b extends b {

        /* renamed from: a  reason: collision with root package name */
        private int f45203a;

        public C0630b() {
            this(0, 1, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0630b) && this.f45203a == ((C0630b) obj).f45203a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f45203a);
        }

        @NotNull
        public String toString() {
            return "ClearDownloadTaskEvent(stat=" + this.f45203a + ')';
        }

        public C0630b(int i10) {
            this.f45203a = i10;
        }

        public /* synthetic */ C0630b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : i10);
        }
    }

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private List<DownloadTaskInfo> f45204a;

        public c(@NotNull List<DownloadTaskInfo> info) {
            Intrinsics.checkNotNullParameter(info, "info");
            this.f45204a = info;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f45204a, ((c) obj).f45204a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45204a.hashCode();
        }

        @NotNull
        public String toString() {
            return "MultipleStateChangeEvent(info=" + this.f45204a + ')';
        }
    }

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private DownloadTaskInfo f45205a;

        public d(@NotNull DownloadTaskInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            this.f45205a = info;
        }

        @NotNull
        public final DownloadTaskInfo a() {
            return this.f45205a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f45205a, ((d) obj).f45205a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45205a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ProgressChangeEvent(info=" + this.f45205a + ')';
        }
    }

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private List<DownloadTaskInfo> f45206a;

        public e(@NotNull List<DownloadTaskInfo> taskList) {
            Intrinsics.checkNotNullParameter(taskList, "taskList");
            this.f45206a = taskList;
        }

        @NotNull
        public final List<DownloadTaskInfo> a() {
            return this.f45206a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && Intrinsics.areEqual(this.f45206a, ((e) obj).f45206a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45206a.hashCode();
        }

        @NotNull
        public String toString() {
            return "RemoveDownloadTaskEvent(taskList=" + this.f45206a + ')';
        }
    }

    /* compiled from: DownloadEvent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private DownloadTaskInfo f45207a;

        public f(@NotNull DownloadTaskInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            this.f45207a = info;
        }

        @NotNull
        public final DownloadTaskInfo a() {
            return this.f45207a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f45207a, ((f) obj).f45207a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f45207a.hashCode();
        }

        @NotNull
        public String toString() {
            return "StateChangeEvent(info=" + this.f45207a + ')';
        }
    }
}
