package com.startshorts.androidplayer.viewmodel.wallet;

import android.content.Context;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WalletViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.wallet.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0696a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Fragment f49475a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0696a(@NotNull Fragment fragment) {
            super(null);
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.f49475a = fragment;
        }

        @NotNull
        public final Fragment a() {
            return this.f49475a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0696a) && Intrinsics.areEqual(this.f49475a, ((C0696a) obj).f49475a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49475a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadFragmentAdapter(fragment=" + this.f49475a + ')';
        }
    }

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49476a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49477b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Context context, int i10) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f49476a = context;
            this.f49477b = i10;
        }

        @NotNull
        public final Context a() {
            return this.f49476a;
        }

        public final int b() {
            return this.f49477b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49476a, bVar.f49476a) && this.f49477b == bVar.f49477b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f49476a.hashCode() * 31) + Integer.hashCode(this.f49477b);
        }

        @NotNull
        public String toString() {
            return "LoadTabs(context=" + this.f49476a + ", defaultIndex=" + this.f49477b + ')';
        }
    }

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f49478a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49479b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49480c;

        public c(int i10, int i11, int i12) {
            super(null);
            this.f49478a = i10;
            this.f49479b = i11;
            this.f49480c = i12;
        }

        public final int a() {
            return this.f49480c;
        }

        public final int b() {
            return this.f49478a;
        }

        public final int c() {
            return this.f49479b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f49478a == cVar.f49478a && this.f49479b == cVar.f49479b && this.f49480c == cVar.f49480c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f49478a) * 31) + Integer.hashCode(this.f49479b)) * 31) + Integer.hashCode(this.f49480c);
        }

        @NotNull
        public String toString() {
            return "QueryWalletRecords(pageNumber=" + this.f49478a + ", pageSize=" + this.f49479b + ", goldType=" + this.f49480c + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
