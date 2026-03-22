package androidx.lifecycle;

import androidx.annotation.MainThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* compiled from: ViewModelProviderGet.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewModelProviderGetKt {
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> VM get(ViewModelProvider viewModelProvider) {
        Intrinsics.checkNotNullParameter(viewModelProvider, "<this>");
        Intrinsics.reifiedOperationMarker(4, "VM");
        return (VM) viewModelProvider.get(Reflection.getOrCreateKotlinClass(ViewModel.class));
    }
}
