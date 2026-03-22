package com.startshorts.androidplayer.adapter.checkin;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.databinding.ItemCheckInFutureNotCheckInBinding;
import com.startshorts.androidplayer.databinding.ItemCheckInNowCheckInBinding;
import com.startshorts.androidplayer.databinding.ItemCheckInNowNotCheckInBinding;
import com.startshorts.androidplayer.databinding.ItemCheckInPassedCheckInBinding;
import com.startshorts.androidplayer.databinding.ItemCheckInPassedNotCheckInBinding;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CheckInAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCheckInAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/CheckInAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n360#2,7:111\n360#2,7:118\n*S KotlinDebug\n*F\n+ 1 CheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/CheckInAdapter\n*L\n35#1:111,7\n47#1:118,7\n*E\n"})
/* loaded from: classes6.dex */
public final class CheckInAdapter extends BaseAdapter<CheckInInfo> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f37215q = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final String f37216o;

    /* renamed from: p  reason: collision with root package name */
    private int f37217p;

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCheckInFutureNotCheckInBinding f37218g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ CheckInAdapter f37219h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull CheckInAdapter checkInAdapter, ItemCheckInFutureNotCheckInBinding binding) {
            super(checkInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37219h = checkInAdapter;
            this.f37218g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCheckInFutureNotCheckInBinding c() {
            return this.f37218g;
        }
    }

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCheckInNowCheckInBinding f37220g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ CheckInAdapter f37221h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull CheckInAdapter checkInAdapter, ItemCheckInNowCheckInBinding binding) {
            super(checkInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37221h = checkInAdapter;
            this.f37220g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCheckInNowCheckInBinding c() {
            return this.f37220g;
        }
    }

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCheckInNowNotCheckInBinding f37222g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ CheckInAdapter f37223h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull CheckInAdapter checkInAdapter, ItemCheckInNowNotCheckInBinding binding) {
            super(checkInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37223h = checkInAdapter;
            this.f37222g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCheckInNowNotCheckInBinding c() {
            return this.f37222g;
        }
    }

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCheckInPassedCheckInBinding f37224g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ CheckInAdapter f37225h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull CheckInAdapter checkInAdapter, ItemCheckInPassedCheckInBinding binding) {
            super(checkInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37225h = checkInAdapter;
            this.f37224g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCheckInPassedCheckInBinding c() {
            return this.f37224g;
        }
    }

    /* compiled from: CheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCheckInPassedNotCheckInBinding f37226g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ CheckInAdapter f37227h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull CheckInAdapter checkInAdapter, ItemCheckInPassedNotCheckInBinding binding) {
            super(checkInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37227h = checkInAdapter;
            this.f37226g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCheckInPassedNotCheckInBinding c() {
            return this.f37226g;
        }
    }

    public CheckInAdapter() {
        super(0L, 1, null);
        this.f37216o = RewardsRepo.f44515a.l();
        this.f37217p = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        CheckInInfo item = getItem(i10);
        if (item == null) {
            return 5;
        }
        if (this.f37217p == -1) {
            synchronized (m()) {
                try {
                    Iterator<CheckInInfo> it = m().iterator();
                    int i11 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            if (Intrinsics.areEqual(it.next().getDay(), this.f37216o)) {
                                break;
                            }
                            i11++;
                        } else {
                            i11 = -1;
                            break;
                        }
                    }
                    this.f37217p = i11;
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        int i12 = this.f37217p;
        if (i12 != -1) {
            if (i12 == i10) {
                if (item.isSign()) {
                    return 3;
                }
                return 4;
            } else if (i10 < i12) {
                if (item.isSign()) {
                    return 1;
                }
                return 2;
            }
        }
        return 5;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "CheckInAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<CheckInInfo>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return new b(this, (ItemCheckInFutureNotCheckInBinding) s(parent, R$layout.item_check_in_future_not_check_in));
                    }
                    return new d(this, (ItemCheckInNowNotCheckInBinding) s(parent, R$layout.item_check_in_now_not_check_in));
                }
                return new c(this, (ItemCheckInNowCheckInBinding) s(parent, R$layout.item_check_in_now_check_in));
            }
            return new f(this, (ItemCheckInPassedNotCheckInBinding) s(parent, R$layout.item_check_in_passed_not_check_in));
        }
        return new e(this, (ItemCheckInPassedCheckInBinding) s(parent, R$layout.item_check_in_passed_check_in));
    }
}
