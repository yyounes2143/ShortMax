package com.startshorts.androidplayer.viewmodel.region;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.region.RegionGroup;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.region.RegionSelectViewModel;
import java.util.List;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RegionSelectViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RegionSelectViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<Boolean> f49081e = new MutableLiveData<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<a.C0680a> f49082f = new MutableLiveData<>();

    /* compiled from: RegionSelectViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static abstract class a {

        /* compiled from: RegionSelectViewModel.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.viewmodel.region.RegionSelectViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0680a extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final List<RegionGroup> f49083a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0680a(@NotNull List<RegionGroup> list) {
                super(null);
                Intrinsics.checkNotNullParameter(list, "list");
                this.f49083a = list;
            }

            @NotNull
            public final List<RegionGroup> a() {
                return this.f49083a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof C0680a) && Intrinsics.areEqual(this.f49083a, ((C0680a) obj).f49083a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f49083a.hashCode();
            }

            @NotNull
            public String toString() {
                return "UpdateData(list=" + this.f49083a + ')';
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(Throwable th2) {
        o.b(this.f49081e, Boolean.FALSE);
        x(z.a(th2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(RegionSelectViewModel regionSelectViewModel, String str) {
        regionSelectViewModel.E(new Throwable(str));
        return Unit.f60915a;
    }

    @NotNull
    public final MutableLiveData<Boolean> C() {
        return this.f49081e;
    }

    @NotNull
    public final MutableLiveData<a.C0680a> D() {
        return this.f49082f;
    }

    public final void F() {
        o.b(this.f49081e, Boolean.TRUE);
        BaseViewModel.j(this, "queryRegions", false, new RegionSelectViewModel$query$1(this, null), new Function1() { // from class: dl.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit G;
                G = RegionSelectViewModel.G(RegionSelectViewModel.this, (String) obj);
                return G;
            }
        }, 2, null);
    }
}
