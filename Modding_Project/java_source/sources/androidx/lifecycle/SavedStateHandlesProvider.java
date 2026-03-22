package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateHandleSupport.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,240:1\n27#2:241\n46#2:242\n32#2,4:243\n31#2,7:253\n27#2:266\n46#2:267\n32#2,4:268\n31#2,7:278\n27#2:290\n46#2:291\n32#2,4:292\n31#2,7:302\n126#3:247\n153#3,3:248\n216#3:263\n217#3:265\n126#3:272\n153#3,3:273\n126#3:296\n153#3,3:297\n37#4,2:251\n37#4,2:276\n37#4,2:300\n1#5:260\n1#5:262\n1#5:285\n1#5:287\n1#5:309\n106#6:261\n90#6:264\n106#6:286\n90#6:288\n90#6:289\n106#6:310\n106#6:312\n90#6:313\n46#7:311\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n*L\n159#1:241\n159#1:242\n159#1:243,4\n159#1:253,7\n182#1:266\n182#1:267\n182#1:268,4\n182#1:278,7\n200#1:290\n200#1:291\n200#1:292,4\n200#1:302,7\n159#1:247\n159#1:248,3\n166#1:263\n166#1:265\n182#1:272\n182#1:273,3\n200#1:296\n200#1:297,3\n159#1:251,2\n182#1:276,2\n200#1:300,2\n159#1:260\n182#1:285\n200#1:309\n159#1:261\n168#1:264\n182#1:286\n198#1:288\n200#1:289\n200#1:310\n201#1:312\n202#1:313\n200#1:311\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    private boolean restored;
    @Nullable
    private Bundle restoredState;
    @NotNull
    private final SavedStateRegistry savedStateRegistry;
    @NotNull
    private final ms.i viewModel$delegate;

    public SavedStateHandlesProvider(@NotNull SavedStateRegistry savedStateRegistry, @NotNull final ViewModelStoreOwner viewModelStoreOwner) {
        Intrinsics.checkNotNullParameter(savedStateRegistry, "savedStateRegistry");
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "viewModelStoreOwner");
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel$delegate = kotlin.c.b(new Function0() { // from class: androidx.lifecycle.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SavedStateHandlesVM savedStateHandlesVM;
                savedStateHandlesVM = SavedStateHandleSupport.getSavedStateHandlesVM(ViewModelStoreOwner.this);
                return savedStateHandlesVM;
            }
        });
    }

    private final SavedStateHandlesVM getViewModel() {
        return (SavedStateHandlesVM) this.viewModel$delegate.getValue();
    }

    @Nullable
    public final Bundle consumeRestoredStateForKey(@NotNull String key) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(key, "key");
        performRestore();
        Bundle bundle = this.restoredState;
        if (bundle == null || !SavedStateReader.m4339containsimpl(SavedStateReader.m4338constructorimpl(bundle), key)) {
            return null;
        }
        Bundle m4400getSavedStateOrNullimpl = SavedStateReader.m4400getSavedStateOrNullimpl(SavedStateReader.m4338constructorimpl(bundle), key);
        if (m4400getSavedStateOrNullimpl == null) {
            Map i10 = p0.i();
            if (i10.isEmpty()) {
                pairArr = new Pair[0];
            } else {
                ArrayList arrayList = new ArrayList(i10.size());
                for (Map.Entry entry : i10.entrySet()) {
                    arrayList.add(ms.k.a((String) entry.getKey(), entry.getValue()));
                }
                pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            }
            m4400getSavedStateOrNullimpl = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            SavedStateWriter.m4424constructorimpl(m4400getSavedStateOrNullimpl);
        }
        SavedStateWriter.m4460removeimpl(SavedStateWriter.m4424constructorimpl(bundle), key);
        if (SavedStateReader.m4416isEmptyimpl(SavedStateReader.m4338constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return m4400getSavedStateOrNullimpl;
    }

    public final void performRestore() {
        Pair[] pairArr;
        if (!this.restored) {
            Bundle consumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey(SavedStateHandleSupport.SAVED_STATE_KEY);
            Map i10 = p0.i();
            if (i10.isEmpty()) {
                pairArr = new Pair[0];
            } else {
                ArrayList arrayList = new ArrayList(i10.size());
                for (Map.Entry entry : i10.entrySet()) {
                    arrayList.add(ms.k.a((String) entry.getKey(), entry.getValue()));
                }
                pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            }
            Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            Bundle m4424constructorimpl = SavedStateWriter.m4424constructorimpl(bundleOf);
            Bundle bundle = this.restoredState;
            if (bundle != null) {
                SavedStateWriter.m4428putAllimpl(m4424constructorimpl, bundle);
            }
            if (consumeRestoredStateForKey != null) {
                SavedStateWriter.m4428putAllimpl(m4424constructorimpl, consumeRestoredStateForKey);
            }
            this.restoredState = bundleOf;
            this.restored = true;
            getViewModel();
        }
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    @NotNull
    public Bundle saveState() {
        Pair[] pairArr;
        Map i10 = p0.i();
        if (i10.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(i10.size());
            for (Map.Entry entry : i10.entrySet()) {
                arrayList.add(ms.k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Bundle m4424constructorimpl = SavedStateWriter.m4424constructorimpl(bundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m4428putAllimpl(m4424constructorimpl, bundle);
        }
        for (Map.Entry<String, SavedStateHandle> entry2 : getViewModel().getHandles().entrySet()) {
            String key = entry2.getKey();
            Bundle saveState = entry2.getValue().savedStateProvider().saveState();
            if (!SavedStateReader.m4416isEmptyimpl(SavedStateReader.m4338constructorimpl(saveState))) {
                SavedStateWriter.m4451putSavedStateimpl(m4424constructorimpl, key, saveState);
            }
        }
        this.restored = false;
        return bundleOf;
    }
}
