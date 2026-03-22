package com.startshorts.androidplayer.viewmodel.mylist;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.MyListViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: MyListViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MyListViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48864f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48865e = kotlin.c.b(new Function0() { // from class: xk.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData C;
            C = MyListViewModel.C();
            return C;
        }
    });

    /* compiled from: MyListViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData C() {
        return new MutableLiveData();
    }

    @NotNull
    public final MutableLiveData<c> B() {
        return (MutableLiveData) this.f48865e.getValue();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "MyListViewModel";
    }
}
