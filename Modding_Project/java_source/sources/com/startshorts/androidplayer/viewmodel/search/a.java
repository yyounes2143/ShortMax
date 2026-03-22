package com.startshorts.androidplayer.viewmodel.search;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.search.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0685a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49308a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0685a(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49308a = keyword;
        }

        @NotNull
        public final String a() {
            return this.f49308a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0685a) && Intrinsics.areEqual(this.f49308a, ((C0685a) obj).f49308a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49308a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Add(keyword=" + this.f49308a + ')';
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f49309a = new b();

        private b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1347793589;
        }

        @NotNull
        public String toString() {
            return "Clear";
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f49310a = new c();

        private c() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -874580398;
        }

        @NotNull
        public String toString() {
            return "Init";
        }
    }

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f49311a = new d();

        private d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 672605262;
        }

        @NotNull
        public String toString() {
            return "ShowClearHistoryDialog";
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
