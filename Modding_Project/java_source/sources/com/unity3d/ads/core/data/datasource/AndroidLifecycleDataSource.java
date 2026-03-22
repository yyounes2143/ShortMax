package com.unity3d.ads.core.data.datasource;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import gt.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.o;
import kt.e;
import kt.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidLifecycleDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidLifecycleDataSource implements LifecycleDataSource, LifecycleEventObserver {
    @NotNull
    private final e<Boolean> _appActive;
    @NotNull
    private final i<Boolean> appActive;

    /* compiled from: AndroidLifecycleDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidLifecycleDataSource() {
        e<Boolean> a10 = o.a(Boolean.TRUE);
        this._appActive = a10;
        this.appActive = c.d(a10);
        registerAppLifecycle();
    }

    private final void registerAppLifecycle() {
        g.d(kotlinx.coroutines.i.b(), null, null, new AndroidLifecycleDataSource$registerAppLifecycle$1(this, null), 3, null);
    }

    @Override // com.unity3d.ads.core.data.datasource.LifecycleDataSource
    public boolean appIsForeground() {
        return getAppActive().getValue().booleanValue();
    }

    @Override // com.unity3d.ads.core.data.datasource.LifecycleDataSource
    @NotNull
    public i<Boolean> getAppActive() {
        return this.appActive;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        e<Boolean> eVar = this._appActive;
        int i10 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
        boolean z10 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                z10 = getAppActive().getValue().booleanValue();
            }
        } else {
            z10 = false;
        }
        eVar.setValue(Boolean.valueOf(z10));
    }
}
