package com.startshorts.androidplayer.viewmodel.tag;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.repo.tag.TagRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.tag.TagViewModel;
import com.startshorts.androidplayer.viewmodel.tag.a;
import com.startshorts.androidplayer.viewmodel.tag.b;
import com.startshorts.androidplayer.viewmodel.tag.c;
import com.startshorts.androidplayer.viewmodel.tag.d;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: TagFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TagViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f49445h = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private boolean f49446e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f49447f = kotlin.c.b(new Function0() { // from class: jl.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData F;
            F = TagViewModel.F();
            return F;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<b> f49448g = new MutableLiveData<>(b.C0695b.f49461a);

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void E(Context context, int i10) {
        o.b(B(), new c.a(TagRepo.f44631a.e(context, i10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData F() {
        return new MutableLiveData();
    }

    private final r I(Long l10, int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryTagFilterEpisodes", false, new TagViewModel$queryTagFilterEpisodes$1(this, l10, i10, i12, i11, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<c> B() {
        return (MutableLiveData) this.f49447f.getValue();
    }

    @NotNull
    public final MutableLiveData<b> C() {
        return this.f49448g;
    }

    public final boolean D() {
        return this.f49446e;
    }

    public final void G(@NotNull com.startshorts.androidplayer.viewmodel.tag.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0694a) {
            a.C0694a c0694a = (a.C0694a) intent;
            I(c0694a.a(), c0694a.d(), c0694a.b(), c0694a.c());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void H(@NotNull d intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof d.a) {
            d.a aVar = (d.a) intent;
            E(aVar.a(), aVar.b());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void J(boolean z10, @NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        o.b(this.f49448g, new b.a(z10, p(throwable)));
    }

    public final void K(boolean z10) {
        this.f49446e = z10;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "TagViewModel";
    }
}
