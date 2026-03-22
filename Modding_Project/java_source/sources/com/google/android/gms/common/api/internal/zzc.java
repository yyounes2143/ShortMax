package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.common.zzg;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzc {
    private final Map zza = Collections.synchronizedMap(new ArrayMap());
    private int zzb = 0;
    @Nullable
    private Bundle zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final LifecycleCallback zza(String str, Class cls) {
        return (LifecycleCallback) cls.cast(this.zza.get(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(String str, LifecycleCallback lifecycleCallback) {
        Map map = this.zza;
        if (!map.containsKey(str)) {
            map.put(str, lifecycleCallback);
            if (this.zzb > 0) {
                new zzg(Looper.getMainLooper()).post(new zzb(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 59);
        sb2.append("LifecycleCallback with tag ");
        sb2.append(str);
        sb2.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc() {
        if (this.zzb > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd() {
        if (this.zzb >= 2) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(@Nullable Bundle bundle) {
        Bundle bundle2;
        this.zzb = 1;
        this.zzc = bundle;
        for (Map.Entry entry : this.zza.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle((String) entry.getKey());
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf() {
        this.zzb = 2;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg() {
        this.zzb = 3;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onResume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(int i10, int i11, @Nullable Intent intent) {
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onActivityResult(i10, i11, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(Bundle bundle) {
        if (bundle != null) {
            for (Map.Entry entry : this.zza.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj() {
        this.zzb = 4;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk() {
        this.zzb = 5;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzl(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zzm() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Bundle zzn() {
        return this.zzc;
    }
}
