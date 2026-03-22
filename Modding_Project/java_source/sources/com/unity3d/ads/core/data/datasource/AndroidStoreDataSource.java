package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidStoreDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidStoreDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidStoreDataSource\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n11335#2:33\n11670#2,3:34\n766#3:37\n857#3,2:38\n*S KotlinDebug\n*F\n+ 1 AndroidStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidStoreDataSource\n*L\n14#1:33\n14#1:34,3\n16#1:37\n16#1:38,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidStoreDataSource implements StoreDataSource {
    @NotNull
    private final Context context;

    public AndroidStoreDataSource(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.unity3d.ads.core.data.datasource.StoreDataSource
    @NotNull
    public List<String> fetchStores(@NotNull List<String> additionalStores) {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of2;
        Intrinsics.checkNotNullParameter(additionalStores, "additionalStores");
        AndroidKnownStore[] values = AndroidKnownStore.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (AndroidKnownStore androidKnownStore : values) {
            arrayList.add(androidKnownStore.getPackageName());
        }
        List i02 = CollectionsKt.i0(CollectionsKt.K0(arrayList, additionalStores));
        PackageManager packageManager = this.context.getPackageManager();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : i02) {
            String str = (String) obj;
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    of2 = PackageManager.PackageInfoFlags.of(0L);
                    packageInfo = packageManager.getPackageInfo(str, of2);
                } else {
                    packageInfo = packageManager.getPackageInfo(str, 0);
                }
                if (packageInfo != null) {
                    arrayList2.add(obj);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return arrayList2;
    }
}
