package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.bean.auth.BindInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BindViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f48269a = new a();

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
            return -1266695397;
        }

        @NotNull
        public String toString() {
            return "JumpBindEmail";
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.auth.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0650b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0650b f48270a = new C0650b();

        private C0650b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0650b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1256672019;
        }

        @NotNull
        public String toString() {
            return "JumpBindPhone";
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<BindInfo> f48271a;

        public c(@Nullable List<BindInfo> list) {
            super(null);
            this.f48271a = list;
        }

        @Nullable
        public final List<BindInfo> a() {
            return this.f48271a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48271a, ((c) obj).f48271a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<BindInfo> list = this.f48271a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowBindInfoList(list=" + this.f48271a + ')';
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48272a;

        public d(@Nullable String str) {
            super(null);
            this.f48272a = str;
        }

        @Nullable
        public final String a() {
            return this.f48272a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f48272a, ((d) obj).f48272a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48272a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowToast(errMsg=" + this.f48272a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
