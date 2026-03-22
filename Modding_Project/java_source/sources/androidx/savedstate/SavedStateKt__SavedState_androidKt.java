package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedState.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedState.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,46:1\n126#2:47\n153#2,3:48\n37#3,2:51\n1#4:53\n106#5:54\n106#5:55\n*S KotlinDebug\n*F\n+ 1 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n*L\n35#1:47\n35#1:48,3\n35#1:51,2\n37#1:54\n44#1:55\n*E\n"})
/* loaded from: classes2.dex */
final /* synthetic */ class SavedStateKt__SavedState_androidKt {
    @NotNull
    public static final Bundle savedState(@NotNull Map<String, ? extends Object> initialState, @NotNull Function1<? super SavedStateWriter, Unit> builderAction) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        if (initialState.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(initialState.size());
            for (Map.Entry<String, ? extends Object> entry : initialState.entrySet()) {
                arrayList.add(k.a(entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        builderAction.invoke(SavedStateWriter.m4422boximpl(SavedStateWriter.m4424constructorimpl(bundleOf)));
        return bundleOf;
    }

    public static /* synthetic */ Bundle savedState$default(Bundle initialState, Function1 builderAction, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            builderAction = new Function1<SavedStateWriter, Unit>() { // from class: androidx.savedstate.SavedStateKt__SavedState_androidKt$savedState$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SavedStateWriter savedStateWriter) {
                    m4336invokexApjlu4(savedStateWriter.m4462unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-xApjlu4  reason: not valid java name */
                public final void m4336invokexApjlu4(Bundle bundle) {
                    Intrinsics.checkNotNullParameter(bundle, "<this>");
                }
            };
        }
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        Bundle bundle = new Bundle(initialState);
        builderAction.invoke(SavedStateWriter.m4422boximpl(SavedStateWriter.m4424constructorimpl(bundle)));
        return bundle;
    }

    public static /* synthetic */ Bundle savedState$default(Map initialState, Function1 builderAction, int i10, Object obj) {
        Pair[] pairArr;
        if ((i10 & 1) != 0) {
            initialState = p0.i();
        }
        if ((i10 & 2) != 0) {
            builderAction = new Function1<SavedStateWriter, Unit>() { // from class: androidx.savedstate.SavedStateKt__SavedState_androidKt$savedState$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SavedStateWriter savedStateWriter) {
                    m4335invokexApjlu4(savedStateWriter.m4462unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-xApjlu4  reason: not valid java name */
                public final void m4335invokexApjlu4(Bundle bundle) {
                    Intrinsics.checkNotNullParameter(bundle, "<this>");
                }
            };
        }
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        if (initialState.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(initialState.size());
            for (Map.Entry entry : initialState.entrySet()) {
                arrayList.add(k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        builderAction.invoke(SavedStateWriter.m4422boximpl(SavedStateWriter.m4424constructorimpl(bundleOf)));
        return bundleOf;
    }

    @NotNull
    public static final Bundle savedState(@NotNull Bundle initialState, @NotNull Function1<? super SavedStateWriter, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        Bundle bundle = new Bundle(initialState);
        builderAction.invoke(SavedStateWriter.m4422boximpl(SavedStateWriter.m4424constructorimpl(bundle)));
        return bundle;
    }
}
