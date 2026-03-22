package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfk {
    @NotNull
    private final List zza;

    public zzfk() {
        this(true);
    }

    public static final boolean zzc(@NotNull Uri uri) {
        return zze(uri);
    }

    private final boolean zzd(String str) {
        List<String> list = this.zza;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (String str2 : list) {
            if (StringsKt.V(str, str2, false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zze(Uri uri) {
        if (!TextUtils.isEmpty(uri.toString()) && Intrinsics.areEqual("https", uri.getScheme()) && !TextUtils.isEmpty(uri.getHost())) {
            return true;
        }
        return false;
    }

    private static final List zzf(List list) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add("https://" + ((String) it.next()) + DomExceptionUtils.SEPARATOR);
        }
        return arrayList;
    }

    public final boolean zza(@NotNull Uri uri) {
        if (zze(uri) && zzd(uri.toString())) {
            return true;
        }
        return false;
    }

    public final boolean zzb(@NotNull String str) {
        Uri parse = Uri.parse(str);
        Intrinsics.checkNotNull(parse);
        if (zze(parse) && zzd(parse.toString())) {
            return true;
        }
        return false;
    }

    public zzfk(boolean z10) {
        this.zza = zzf(CollectionsKt.q("www.recaptcha.net", "www.gstatic.com/recaptcha", "www.gstatic.cn/recaptcha"));
    }
}
