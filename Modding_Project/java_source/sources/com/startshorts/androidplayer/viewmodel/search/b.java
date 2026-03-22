package com.startshorts.androidplayer.viewmodel.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f49312a = new a();

        private a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1155165722;
        }

        @NotNull
        public String toString() {
            return "ClearHistoryDialogDisplay";
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.search.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0686b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f49313a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0686b(@NotNull List<String> history) {
            super(null);
            Intrinsics.checkNotNullParameter(history, "history");
            this.f49313a = history;
        }

        @NotNull
        public final List<String> a() {
            return this.f49313a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0686b) && Intrinsics.areEqual(this.f49313a, ((C0686b) obj).f49313a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49313a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Display(history=" + this.f49313a + ')';
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49314a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49314a = keyword;
        }

        @NotNull
        public final String a() {
            return this.f49314a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49314a, ((c) obj).f49314a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49314a.hashCode();
        }

        @NotNull
        public String toString() {
            return "HotSearch(keyword=" + this.f49314a + ')';
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49315a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49315a = keyword;
        }

        @NotNull
        public final String a() {
            return this.f49315a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f49315a, ((d) obj).f49315a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49315a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Search(keyword=" + this.f49315a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
