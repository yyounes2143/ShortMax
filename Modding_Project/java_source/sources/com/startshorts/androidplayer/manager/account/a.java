package com.startshorts.androidplayer.manager.account;

import com.startshorts.androidplayer.bean.account.MergeUserInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MergeState.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class a {

    /* compiled from: MergeState.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.account.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0615a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0615a f41557a = new C0615a();

        private C0615a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0615a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -818196503;
        }

        @NotNull
        public String toString() {
            return "MERGE_DISMISS_CLOSE";
        }
    }

    /* compiled from: MergeState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f41558a = new b();

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
            return 1253438451;
        }

        @NotNull
        public String toString() {
            return "MERGE_DISMISS_SUCCEED";
        }
    }

    /* compiled from: MergeState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f41559a;

        public c(@Nullable String str) {
            super(null);
            this.f41559a = str;
        }

        @Nullable
        public final String a() {
            return this.f41559a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f41559a, ((c) obj).f41559a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f41559a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "MERGE_FAILED(errorMsg=" + this.f41559a + ')';
        }
    }

    /* compiled from: MergeState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f41560a = new d();

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
            return 21442583;
        }

        @NotNull
        public String toString() {
            return "MERGE_SHOW";
        }
    }

    /* compiled from: MergeState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final e f41561a = new e();

        private e() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 665064040;
        }

        @NotNull
        public String toString() {
            return "MERGE_START";
        }
    }

    /* compiled from: MergeState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final MergeUserInfo f41562a;

        public f(@Nullable MergeUserInfo mergeUserInfo) {
            super(null);
            this.f41562a = mergeUserInfo;
        }

        @Nullable
        public final MergeUserInfo a() {
            return this.f41562a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f41562a, ((f) obj).f41562a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            MergeUserInfo mergeUserInfo = this.f41562a;
            if (mergeUserInfo == null) {
                return 0;
            }
            return mergeUserInfo.hashCode();
        }

        @NotNull
        public String toString() {
            return "MERGE_SUCCEED(mergeUserInfo=" + this.f41562a + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
