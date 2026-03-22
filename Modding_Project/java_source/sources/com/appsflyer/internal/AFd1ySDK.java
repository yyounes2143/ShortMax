package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFc1aSDK;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@WorkerThread
@SourceDebugExtension({"SMAP\nExceptionManageCacheImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n11653#2,9:131\n13579#2:140\n11653#2,9:141\n13579#2:150\n13580#2:152\n11662#2:153\n13580#2:155\n11662#2:156\n4117#2:158\n4217#2,2:159\n4117#2:165\n4217#2,2:166\n1#3:151\n1#3:154\n1#3:157\n1549#4:161\n1620#4,3:162\n1549#4:168\n1620#4,3:169\n*S KotlinDebug\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n*L\n69#1:131,9\n69#1:140\n71#1:141,9\n71#1:150\n71#1:152\n71#1:153\n69#1:155\n69#1:156\n101#1:158\n101#1:159,2\n119#1:165\n119#1:166,2\n71#1:151\n69#1:154\n101#1:161\n101#1:162,3\n120#1:168\n120#1:169,3\n*E\n"})
/* loaded from: classes2.dex */
public final class AFd1ySDK implements AFc1cSDK {
    @NotNull
    private final AFc1hSDK getMonetizationNetwork;

    public AFd1ySDK(@NotNull AFc1hSDK aFc1hSDK) {
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        this.getMonetizationNetwork = aFc1hSDK;
    }

    private final File AFAdRevenueData() {
        Context context = this.getMonetizationNetwork.getMonetizationNetwork;
        if (context != null) {
            File file = new File(context.getFilesDir(), "AFExceptionsCache");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final boolean getCurrencyIso4217Code() {
        return getMonetizationNetwork(new String[0]);
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final int getMediationNetwork() {
        int i10 = 0;
        for (AFc1aSDK aFc1aSDK : getRevenue()) {
            i10 += aFc1aSDK.getMediationNetwork;
        }
        return i10;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final boolean getMonetizationNetwork(@NotNull String... strArr) {
        boolean z10;
        Intrinsics.checkNotNullParameter(strArr, "");
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                z10 = true;
                if (AFAdRevenueData != null) {
                    if (strArr.length == 0) {
                        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions", false, 4, null);
                        z10 = ws.f.w(AFAdRevenueData);
                    } else {
                        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions except for: " + kotlin.collections.n.U0(strArr, ", ", null, null, 0, null, null, 62, null), false, 4, null);
                        File[] listFiles = AFAdRevenueData.listFiles();
                        if (listFiles != null) {
                            Intrinsics.checkNotNullExpressionValue(listFiles, "");
                            ArrayList<File> arrayList = new ArrayList();
                            for (File file : listFiles) {
                                if (!kotlin.collections.n.f0(strArr, file.getName())) {
                                    arrayList.add(file);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
                            for (File file2 : arrayList) {
                                Intrinsics.checkNotNullExpressionValue(file2, "");
                                arrayList2.add(Boolean.valueOf(ws.f.w(file2)));
                            }
                            Set i12 = CollectionsKt.i1(arrayList2);
                            if (i12.isEmpty()) {
                                i12 = y0.d(Boolean.TRUE);
                            }
                            Set set = i12;
                            if (set.size() != 1 || !((Boolean) CollectionsKt.q0(set)).booleanValue()) {
                                z10 = false;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    @NotNull
    public final List<AFc1aSDK> getRevenue() {
        List<AFc1aSDK> list;
        File[] listFiles;
        ArrayList arrayList;
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                list = null;
                if (AFAdRevenueData != null && (listFiles = AFAdRevenueData.listFiles()) != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (File file : listFiles) {
                        File[] listFiles2 = file.listFiles();
                        if (listFiles2 != null) {
                            Intrinsics.checkNotNullExpressionValue(listFiles2, "");
                            arrayList = new ArrayList();
                            for (File file2 : listFiles2) {
                                AFc1aSDK.AFa1zSDK aFa1zSDK = AFc1aSDK.AFa1zSDK;
                                Intrinsics.checkNotNullExpressionValue(file2, "");
                                AFc1aSDK mediationNetwork = AFc1aSDK.AFa1zSDK.getMediationNetwork(ws.f.m(file2, null, 1, null));
                                if (mediationNetwork != null) {
                                    arrayList.add(mediationNetwork);
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                        if (arrayList != null) {
                            arrayList2.add(arrayList);
                        }
                    }
                    list = CollectionsKt.B(arrayList2);
                }
                if (list == null) {
                    list = CollectionsKt.n();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final void getCurrencyIso4217Code(int i10, int i11) {
        File[] listFiles;
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                if (AFAdRevenueData != null && (listFiles = AFAdRevenueData.listFiles()) != null) {
                    Intrinsics.checkNotNullExpressionValue(listFiles, "");
                    ArrayList<File> arrayList = new ArrayList();
                    for (File file : listFiles) {
                        String name = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "");
                        int mediationNetwork = AFk1xSDK.getMediationNetwork(name);
                        if (i10 > mediationNetwork || mediationNetwork > i11) {
                            arrayList.add(file);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
                    for (File file2 : arrayList) {
                        Intrinsics.checkNotNullExpressionValue(file2, "");
                        arrayList2.add(Boolean.valueOf(ws.f.w(file2)));
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    @Nullable
    public final String AFAdRevenueData(@NotNull Throwable th2, @NotNull String str) {
        String str2;
        File file;
        Intrinsics.checkNotNullParameter(th2, "");
        Intrinsics.checkNotNullParameter(str, "");
        synchronized (this) {
            File AFAdRevenueData = AFAdRevenueData();
            str2 = null;
            if (AFAdRevenueData != null) {
                file = new File(AFAdRevenueData, "6.17.5");
                if (!file.exists()) {
                    file.mkdirs();
                }
            } else {
                file = null;
            }
            if (file != null) {
                try {
                    AFc1aSDK revenue = AFd1sSDK.getRevenue(th2, str);
                    String str3 = revenue.AFAdRevenueData;
                    File file2 = new File(file, str3);
                    if (file2.exists()) {
                        AFc1aSDK.AFa1zSDK aFa1zSDK = AFc1aSDK.AFa1zSDK;
                        AFc1aSDK mediationNetwork = AFc1aSDK.AFa1zSDK.getMediationNetwork(ws.f.m(file2, null, 1, null));
                        if (mediationNetwork != null) {
                            mediationNetwork.getMediationNetwork++;
                            revenue = mediationNetwork;
                        }
                    }
                    ws.f.p(file2, revenue.getMonetizationNetwork(), null, 2, null);
                    str2 = str3;
                } catch (Exception e10) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "Could not cache exception\n " + e10.getMessage(), false, 4, null);
                }
            }
        }
        return str2;
    }
}
