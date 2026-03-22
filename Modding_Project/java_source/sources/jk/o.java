package jk;

import androidx.lifecycle.MutableLiveData;
import fk.h0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MutableLiveDataExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class o {
    @ms.c
    public static final <T> void b(@NotNull final MutableLiveData<T> mutableLiveData, @Nullable final T t10) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
        h0.f51735a.e(new Runnable() { // from class: jk.n
            @Override // java.lang.Runnable
            public final void run() {
                o.c(MutableLiveData.this, t10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(MutableLiveData mutableLiveData, Object obj) {
        mutableLiveData.setValue(obj);
    }
}
