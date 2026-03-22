package com.unity3d.ads.core.data.datasource;

import android.database.ContentObserver;
import android.provider.Settings;
import com.ss.ttm.player.MediaPlayer;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ProduceKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidDynamicDeviceInfoDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1", f = "AndroidDynamicDeviceInfoDataSource.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1 extends SuspendLambda implements Function2<h<? super VolumeSettingsChange>, c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidDynamicDeviceInfoDataSource this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1(AndroidDynamicDeviceInfoDataSource androidDynamicDeviceInfoDataSource, c<? super AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1> cVar) {
        super(2, cVar);
        this.this$0 = androidDynamicDeviceInfoDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1 androidDynamicDeviceInfoDataSource$volumeSettingsChange$1 = new AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1(this.this$0, cVar);
        androidDynamicDeviceInfoDataSource$volumeSettingsChange$1.L$0 = obj;
        return androidDynamicDeviceInfoDataSource$volumeSettingsChange$1;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$contentObserver$1, android.database.ContentObserver] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        double streamVolume;
        boolean z10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            final h hVar = (h) this.L$0;
            final Ref.DoubleRef doubleRef = new Ref.DoubleRef();
            streamVolume = this.this$0.getStreamVolume(3);
            doubleRef.element = streamVolume;
            kotlinx.coroutines.channels.c.b(hVar, new VolumeSettingsChange.VolumeChange(streamVolume));
            final Ref.IntRef intRef = new Ref.IntRef();
            int ringerMode = this.this$0.getRingerMode();
            intRef.element = ringerMode;
            if (ringerMode == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            kotlinx.coroutines.channels.c.b(hVar, new VolumeSettingsChange.MuteChange(z10));
            final AndroidDynamicDeviceInfoDataSource androidDynamicDeviceInfoDataSource = this.this$0;
            final ?? r42 = new ContentObserver() { // from class: com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$contentObserver$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(null);
                }

                @Override // android.database.ContentObserver
                public void onChange(boolean z11) {
                    double streamVolume2;
                    boolean z12;
                    super.onChange(z11);
                    streamVolume2 = AndroidDynamicDeviceInfoDataSource.this.getStreamVolume(3);
                    Ref.DoubleRef doubleRef2 = doubleRef;
                    if (streamVolume2 != doubleRef2.element) {
                        doubleRef2.element = streamVolume2;
                        kotlinx.coroutines.channels.c.b(hVar, new VolumeSettingsChange.VolumeChange(streamVolume2));
                    }
                    int ringerMode2 = AndroidDynamicDeviceInfoDataSource.this.getRingerMode();
                    Ref.IntRef intRef2 = intRef;
                    if (ringerMode2 != intRef2.element) {
                        intRef2.element = ringerMode2;
                        h<VolumeSettingsChange> hVar2 = hVar;
                        if (ringerMode2 == 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        kotlinx.coroutines.channels.c.b(hVar2, new VolumeSettingsChange.MuteChange(z12));
                    }
                }
            };
            this.this$0.getContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, r42);
            final AndroidDynamicDeviceInfoDataSource androidDynamicDeviceInfoDataSource2 = this.this$0;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    AndroidDynamicDeviceInfoDataSource.this.getContext().getContentResolver().unregisterContentObserver(r42);
                }
            };
            this.label = 1;
            if (ProduceKt.a(hVar, function0, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull h<? super VolumeSettingsChange> hVar, @Nullable c<? super Unit> cVar) {
        return ((AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
