package com.startshorts.androidplayer.viewmodel.wallet;

import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.bean.tab.WalletTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WalletViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final FragmentStateAdapter f49481a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull FragmentStateAdapter adapter) {
            super(null);
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.f49481a = adapter;
        }

        @NotNull
        public final FragmentStateAdapter a() {
            return this.f49481a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49481a, ((a) obj).f49481a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49481a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowFragmentAdapter(adapter=" + this.f49481a + ')';
        }
    }

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.wallet.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0697b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<WalletTab> f49482a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0697b(@NotNull List<WalletTab> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f49482a = list;
        }

        @NotNull
        public final List<WalletTab> a() {
            return this.f49482a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0697b) && Intrinsics.areEqual(this.f49482a, ((C0697b) obj).f49482a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49482a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowTabs(list=" + this.f49482a + ')';
        }
    }

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<WalletRecord> f49483a;

        public c(@Nullable List<WalletRecord> list) {
            super(null);
            this.f49483a = list;
        }

        @Nullable
        public final List<WalletRecord> a() {
            return this.f49483a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49483a, ((c) obj).f49483a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<WalletRecord> list = this.f49483a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowWalletRecords(list=" + this.f49483a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
