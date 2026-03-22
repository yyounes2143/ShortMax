package com.startshorts.androidplayer.viewmodel.library;

import android.util.LongSparseArray;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.library.LibraryCategory;
import com.startshorts.androidplayer.bean.library.LoadLibrary;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.library.LibraryViewModel;
import com.startshorts.androidplayer.viewmodel.library.a;
import com.startshorts.androidplayer.viewmodel.library.b;
import fk.x;
import java.util.ArrayList;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LibraryViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLibraryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryViewModel.kt\ncom/startshorts/androidplayer/viewmodel/library/LibraryViewModel\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,162:1\n77#2,4:163\n77#2,4:167\n*S KotlinDebug\n*F\n+ 1 LibraryViewModel.kt\ncom/startshorts/androidplayer/viewmodel/library/LibraryViewModel\n*L\n117#1:163,4\n136#1:167,4\n*E\n"})
/* loaded from: classes7.dex */
public final class LibraryViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final x f48793e = new x(20);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<b> f48794f = new MutableLiveData<>();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final LoadLibrary f48795g = new LoadLibrary(null, null, false, 7, null);

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(Throwable th2) {
        x(z.a(th2));
        this.f48793e.f();
    }

    private final void K() {
        BaseViewModel.j(this, "queryLibraryLabel", false, new LibraryViewModel$queryLabelAndPage$1(this, null), new Function1() { // from class: wk.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L;
                L = LibraryViewModel.L(LibraryViewModel.this, (String) obj);
                return L;
            }
        }, 2, null);
        BaseViewModel.j(this, "queryLibrary", false, new LibraryViewModel$queryLabelAndPage$3(this, null), new Function1() { // from class: wk.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit M;
                M = LibraryViewModel.M(LibraryViewModel.this, (String) obj);
                return M;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(LibraryViewModel libraryViewModel, String str) {
        libraryViewModel.I(new Throwable(str));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(LibraryViewModel libraryViewModel, String str) {
        libraryViewModel.I(new Throwable(str));
        return Unit.f60915a;
    }

    private final void N(final int i10, long j10, long j11, LongSparseArray<LibraryCategory> longSparseArray, int i11, int i12) {
        final String E = E(j10, j11, longSparseArray);
        ArrayList arrayList = new ArrayList();
        int size = longSparseArray.size();
        for (int i13 = 0; i13 < size; i13++) {
            long keyAt = longSparseArray.keyAt(i13);
            LibraryCategory valueAt = longSparseArray.valueAt(i13);
            if (keyAt != 0) {
                arrayList.add(Long.valueOf(valueAt.getId()));
            }
        }
        BaseViewModel.j(this, "queryLibraryList", false, new LibraryViewModel$queryNextPage$2(j10, j11, arrayList, i11, i12, this, i10, E, null), new Function1() { // from class: wk.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O;
                O = LibraryViewModel.O(LibraryViewModel.this, i10, E, (String) obj);
                return O;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(LibraryViewModel libraryViewModel, int i10, String str, String str2) {
        libraryViewModel.f48793e.f();
        o.b(libraryViewModel.f48794f, new b.C0667b(i10, str, libraryViewModel.p(z.a(new Throwable(str2)))));
        return Unit.f60915a;
    }

    @NotNull
    public final String E(long j10, long j11, @NotNull LongSparseArray<LibraryCategory> classIdMap) {
        Intrinsics.checkNotNullParameter(classIdMap, "classIdMap");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j11);
        int size = classIdMap.size();
        for (int i10 = 0; i10 < size; i10++) {
            long keyAt = classIdMap.keyAt(i10);
            classIdMap.valueAt(i10);
            sb2.append(keyAt);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final LoadLibrary F() {
        return this.f48795g;
    }

    @NotNull
    public final MutableLiveData<b> G() {
        return this.f48794f;
    }

    @NotNull
    public final x H() {
        return this.f48793e;
    }

    public final void J(@NotNull a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0666a) {
            K();
        } else if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            N(bVar.e(), bVar.d(), bVar.b(), bVar.a(), bVar.c(), this.f48793e.c());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
