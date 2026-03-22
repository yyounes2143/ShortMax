package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.bean.auth.SwitchInfoList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwitchViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class g {

    /* compiled from: SwitchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f48306a = new a();

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
            return 916587394;
        }

        @NotNull
        public String toString() {
            return "MergeAccount";
        }
    }

    /* compiled from: SwitchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends g {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final SwitchInfoList f48307a;

        public b(@Nullable SwitchInfoList switchInfoList) {
            super(null);
            this.f48307a = switchInfoList;
        }

        @Nullable
        public final SwitchInfoList a() {
            return this.f48307a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48307a, ((b) obj).f48307a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            SwitchInfoList switchInfoList = this.f48307a;
            if (switchInfoList == null) {
                return 0;
            }
            return switchInfoList.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowSwitchInfoList(list=" + this.f48307a + ')';
        }
    }

    /* compiled from: SwitchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends g {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48308a;

        @Nullable
        public final String a() {
            return this.f48308a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48308a, ((c) obj).f48308a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48308a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowToast(errMsg=" + this.f48308a + ')';
        }
    }

    /* compiled from: SwitchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f48309a = new d();

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
            return -1906046644;
        }

        @NotNull
        public String toString() {
            return "SwitchAccount";
        }
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private g() {
    }
}
