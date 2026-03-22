package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.w;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbm implements zzaq {
    @NotNull
    private final Context zza;
    @NotNull
    private final String zzb = "rce_";

    public zzbm(@NotNull Context context) {
        this.zza = context;
        new zzcd(context);
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    @Nullable
    public final String zza(@NotNull String str) {
        File file = new File(this.zza.getCacheDir(), this.zzb.concat(String.valueOf(str)));
        if (file.exists()) {
            return new String(zzcd.zza(file), StandardCharsets.UTF_8);
        }
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final void zzb() {
        try {
            File[] listFiles = this.zza.getCacheDir().listFiles();
            if (listFiles != null) {
                ArrayList<File> arrayList = new ArrayList();
                for (File file : listFiles) {
                    if (StringsKt.V(file.getName(), this.zzb, false, 2, null)) {
                        arrayList.add(file);
                    }
                }
                for (File file2 : arrayList) {
                    file2.delete();
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final void zzc(@NotNull String str, @NotNull String str2) {
        kotlin.ranges.b bVar = new kotlin.ranges.b('A', 'z');
        ArrayList arrayList = new ArrayList(CollectionsKt.z(bVar, 10));
        Iterator<Character> it = bVar.iterator();
        while (it.hasNext()) {
            arrayList.add(Character.valueOf(((w) it).nextChar()));
        }
        String A0 = CollectionsKt.A0(CollectionsKt.f(arrayList).subList(0, 8), "", null, null, 0, null, null, 62, null);
        File file = new File(this.zza.getCacheDir(), this.zzb.concat(String.valueOf(A0)));
        zzcd.zzb(file, String.valueOf(str2).getBytes(StandardCharsets.UTF_8));
        file.renameTo(new File(this.zza.getCacheDir(), this.zzb.concat(String.valueOf(str))));
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final boolean zzd(@NotNull String str) {
        try {
            File[] listFiles = this.zza.getCacheDir().listFiles();
            File file = null;
            if (listFiles != null) {
                int length = listFiles.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    File file2 = listFiles[i10];
                    if (Intrinsics.areEqual(file2.getName(), this.zzb + str)) {
                        file = file2;
                        break;
                    }
                    i10++;
                }
            }
            if (file == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
