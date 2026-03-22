package com.appsflyer.internal;

import android.content.Context;
import android.util.Base64;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@SourceDebugExtension({"SMAP\nFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,335:1\n1855#2,2:336\n1855#2,2:339\n1855#2:341\n1856#2:344\n1855#2,2:346\n1855#2:348\n1856#2:351\n6442#3:338\n13579#3,2:349\n18#4:342\n26#5:343\n1#6:345\n*S KotlinDebug\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n*L\n106#1:336,2\n189#1:339,2\n207#1:341\n207#1:344\n263#1:346,2\n296#1:348\n296#1:351\n187#1:338\n299#1:349,2\n213#1:342\n213#1:343\n*E\n"})
/* loaded from: classes2.dex */
public final class AFc1vSDK implements AFc1tSDK {
    @NotNull
    private final AFc1hSDK AFAdRevenueData;
    @NotNull
    private final AFc1qSDK getMediationNetwork;
    @NotNull
    private final Map<String, Integer> getMonetizationNetwork;
    @NotNull
    private final AFc1rSDK getRevenue;

    public AFc1vSDK(@NotNull AFc1hSDK aFc1hSDK, @NotNull AFc1qSDK aFc1qSDK) {
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        Intrinsics.checkNotNullParameter(aFc1qSDK, "");
        this.AFAdRevenueData = aFc1hSDK;
        this.getMediationNetwork = aFc1qSDK;
        this.getRevenue = new AFc1rSDK(CollectionsKt.q(new AFc1sSDK("ConversionsCache", CollectionsKt.e(AFe1pSDK.CONVERSION), 1), new AFc1sSDK("AttrCache", CollectionsKt.e(AFe1pSDK.ATTR), 1), new AFc1sSDK("OtherCache", CollectionsKt.q(AFe1pSDK.LAUNCH, AFe1pSDK.INAPP, AFe1pSDK.ADREVENUE, AFe1pSDK.ARS_VALIDATE, AFe1pSDK.PURCHASE_VALIDATE, AFe1pSDK.MANUAL_PURCHASE_VALIDATION, AFe1pSDK.SDK_SERVICES), 40)));
        this.getMonetizationNetwork = p0.o(ms.k.a("ConversionsCache", 0), ms.k.a("AttrCache", 0), ms.k.a("OtherCache", 0));
    }

    private static AFc1uSDK AFAdRevenueData(File file) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
            char[] cArr = new char[(int) file.length()];
            inputStreamReader.read(cArr);
            AFc1uSDK aFc1uSDK = new AFc1uSDK(cArr);
            aFc1uSDK.getMediationNetwork = file.getName();
            ws.b.a(inputStreamReader, null);
            return aFc1uSDK;
        } catch (Exception e10) {
            AFLogger.INSTANCE.e(AFg1cSDK.CACHE, "Error while loading request from cache", e10, false, false, true, false);
            return null;
        }
    }

    private final void getMonetizationNetwork() {
        for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
            String str = aFc1sSDK.AFAdRevenueData;
            Context context = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context);
            File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
            int i10 = 0;
            if (!file.exists()) {
                file.mkdirs();
                this.getMonetizationNetwork.put(aFc1sSDK.AFAdRevenueData, 0);
            } else {
                Map<String, Integer> map = this.getMonetizationNetwork;
                String str2 = aFc1sSDK.AFAdRevenueData;
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    i10 = listFiles.length;
                }
                map.put(str2, Integer.valueOf(i10));
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    @NotNull
    public final List<AFc1uSDK> getCurrencyIso4217Code() {
        AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Get Cached Requests", false, 4, null);
        ArrayList arrayList = new ArrayList();
        ArrayList<File> arrayList2 = new ArrayList();
        try {
            Context context = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context);
            if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
                Context context2 = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context2);
                new File(context2.getFilesDir(), "AFRequestCache").mkdir();
            }
            for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
                String str = aFc1sSDK.AFAdRevenueData;
                Context context3 = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context3);
                File file = new File(new File(context3.getFilesDir(), "AFRequestCache"), str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    listFiles = new File[0];
                }
                CollectionsKt.G(arrayList2, listFiles);
            }
            for (File file2 : arrayList2) {
                AFLogger aFLogger = AFLogger.INSTANCE;
                AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
                String name = file2.getName();
                AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Found cached request: " + name, false, 4, null);
                AFc1uSDK AFAdRevenueData = AFAdRevenueData(file2);
                if (AFAdRevenueData != null) {
                    arrayList.add(AFAdRevenueData);
                }
            }
        } catch (Exception e10) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not get cached requests", e10, false, false, false, false, 120, null);
        }
        AFLogger aFLogger2 = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK2 = AFg1cSDK.CACHE;
        int size = arrayList.size();
        AFh1ySDK.i$default(aFLogger2, aFg1cSDK2, "Found " + size + " Cached Requests", false, 4, null);
        return arrayList;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final void getMediationNetwork() {
        try {
            if (this.getMediationNetwork.getRevenue("AF_CACHE_VERSION", -1) != 2) {
                this.getMediationNetwork.getMediationNetwork("AF_CACHE_VERSION", 2);
                Context context = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context);
                if (new File(context.getFilesDir(), "AFRequestCache").exists()) {
                    Context context2 = this.AFAdRevenueData.getMonetizationNetwork;
                    Intrinsics.checkNotNull(context2);
                    ws.f.w(new File(context2.getFilesDir(), "AFRequestCache"));
                    Context context3 = this.AFAdRevenueData.getMonetizationNetwork;
                    Intrinsics.checkNotNull(context3);
                    new File(context3.getFilesDir(), "AFRequestCache").mkdir();
                }
            } else {
                Context context4 = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context4);
                if (!new File(context4.getFilesDir(), "AFRequestCache").exists()) {
                    Context context5 = this.AFAdRevenueData.getMonetizationNetwork;
                    Intrinsics.checkNotNull(context5);
                    new File(context5.getFilesDir(), "AFRequestCache").mkdir();
                }
            }
            getMonetizationNetwork();
        } catch (Exception e10) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not init cache", e10, false, false, false, false, 120, null);
        }
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final void getRevenue() {
        try {
            Context context = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context);
            if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
                Context context2 = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context2);
                new File(context2.getFilesDir(), "AFRequestCache").mkdir();
                return;
            }
            for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
                String str = aFc1sSDK.AFAdRevenueData;
                Context context3 = this.AFAdRevenueData.getMonetizationNetwork;
                Intrinsics.checkNotNull(context3);
                File[] listFiles = new File(new File(context3.getFilesDir(), "AFRequestCache"), str).listFiles();
                if (listFiles != null) {
                    Intrinsics.checkNotNullExpressionValue(listFiles, "");
                    for (File file : listFiles) {
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
                        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "ClearCache : Found cached request " + file.getName(), false, 4, null);
                        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Deleting " + file.getName() + " from cache", false, 4, null);
                        file.delete();
                    }
                }
            }
            Context context4 = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context4);
            ws.f.w(new File(context4.getFilesDir(), "AFRequestCache"));
            getMonetizationNetwork();
        } catch (Exception e10) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not clearCache request", e10, false, false, false, false, 120, null);
        }
    }

    private final String AFAdRevenueData(AFe1pSDK aFe1pSDK) {
        String str;
        AFc1sSDK mediationNetwork = getMediationNetwork(aFe1pSDK);
        if (mediationNetwork == null || (str = mediationNetwork.AFAdRevenueData) == null) {
            throw new UnsupportedOperationException("Cache do not support this type of events");
        }
        return str;
    }

    private final boolean getMediationNetwork(File file) {
        try {
            file.delete();
            getMonetizationNetwork();
            return true;
        } catch (Exception e10) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
            String name = file.getName();
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Could not delete " + name + " from cache", e10, false, false, false, false, 120, null);
            return false;
        }
    }

    private final AFc1sSDK getMediationNetwork(AFe1pSDK aFe1pSDK) {
        Object obj;
        Iterator<T> it = this.getRevenue.getMediationNetwork.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AFc1sSDK) obj).getMediationNetwork.contains(aFe1pSDK)) {
                break;
            }
        }
        return (AFc1sSDK) obj;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final boolean getRevenue(@Nullable String str) {
        if (str == null) {
            return false;
        }
        Context context = this.AFAdRevenueData.getMonetizationNetwork;
        Intrinsics.checkNotNull(context);
        if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
            Context context2 = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context2);
            new File(context2.getFilesDir(), "AFRequestCache").mkdir();
            return true;
        }
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Deleting " + str + " from cache", false, 4, null);
        for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
            String str2 = aFc1sSDK.AFAdRevenueData;
            Context context3 = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context3);
            File file = new File(new File(new File(context3.getFilesDir(), "AFRequestCache"), str2), str);
            if (file.exists()) {
                return getMediationNetwork(file);
            }
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    @Nullable
    public final String getMediationNetwork(@NotNull AFc1uSDK aFc1uSDK) {
        Exception exc;
        File file;
        AFLogger aFLogger;
        AFg1cSDK aFg1cSDK;
        String valueOf;
        String str;
        List o12;
        List<File> V0;
        Intrinsics.checkNotNullParameter(aFc1uSDK, "");
        try {
            AFe1pSDK aFe1pSDK = aFc1uSDK.AFAdRevenueData;
            Intrinsics.checkNotNullExpressionValue(aFe1pSDK, "");
            Context context = this.AFAdRevenueData.getMonetizationNetwork;
            Intrinsics.checkNotNull(context);
            File file2 = new File(new File(context.getFilesDir(), "AFRequestCache"), AFAdRevenueData(aFe1pSDK));
            if (!file2.exists()) {
                file2.mkdirs();
            }
            aFLogger = AFLogger.INSTANCE;
            aFg1cSDK = AFg1cSDK.CACHE;
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Caching request with URL: " + aFc1uSDK.getRevenue, false, 4, null);
            valueOf = String.valueOf(System.currentTimeMillis());
            file = new File(file2, valueOf);
        } catch (Exception e10) {
            exc = e10;
            file = null;
        }
        try {
            file.createNewFile();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getPath(), true), Charset.defaultCharset());
            outputStreamWriter.write("version=");
            outputStreamWriter.write(aFc1uSDK.getCurrencyIso4217Code);
            outputStreamWriter.write(10);
            outputStreamWriter.write("url=");
            outputStreamWriter.write(aFc1uSDK.getRevenue);
            outputStreamWriter.write(10);
            outputStreamWriter.write("data=");
            outputStreamWriter.write(Base64.encodeToString(aFc1uSDK.getMediationNetwork(), 2));
            outputStreamWriter.write(10);
            AFe1pSDK aFe1pSDK2 = aFc1uSDK.AFAdRevenueData;
            outputStreamWriter.write("type=");
            outputStreamWriter.write(aFe1pSDK2.name());
            outputStreamWriter.write(10);
            Map<String, String> map = aFc1uSDK.getMonetizationNetwork;
            if (map != null && !map.isEmpty()) {
                outputStreamWriter.write("headers=");
                Map<String, String> map2 = aFc1uSDK.getMonetizationNetwork;
                Intrinsics.checkNotNull(map2, "");
                String jSONObject = new JSONObject(map2).toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject, "");
                byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "");
                outputStreamWriter.write(Base64.encodeToString(bytes, 2));
                outputStreamWriter.write(10);
            }
            outputStreamWriter.flush();
            Unit unit = Unit.f60915a;
            ws.b.a(outputStreamWriter, null);
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Cache request: done, cacheKey: " + valueOf, false, 4, null);
            AFe1pSDK aFe1pSDK3 = aFc1uSDK.AFAdRevenueData;
            Intrinsics.checkNotNullExpressionValue(aFe1pSDK3, "");
            AFc1sSDK mediationNetwork = getMediationNetwork(aFe1pSDK3);
            Integer valueOf2 = mediationNetwork != null ? Integer.valueOf(mediationNetwork.getMonetizationNetwork) : null;
            if (valueOf2 != null) {
                int intValue = valueOf2.intValue();
                Map<String, Integer> map3 = this.getMonetizationNetwork;
                AFc1sSDK mediationNetwork2 = getMediationNetwork(aFe1pSDK3);
                if (mediationNetwork2 != null && (str = mediationNetwork2.AFAdRevenueData) != null) {
                    Integer num = map3.get(str);
                    int intValue2 = num != null ? num.intValue() : 0;
                    if (intValue2 >= intValue) {
                        int i10 = (intValue2 + 1) - intValue;
                        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Cache overflown for type " + aFe1pSDK3 + ", removing " + i10 + " item(s)", false, 4, null);
                        Context context2 = this.AFAdRevenueData.getMonetizationNetwork;
                        Intrinsics.checkNotNull(context2);
                        File file3 = new File(new File(context2.getFilesDir(), "AFRequestCache"), AFAdRevenueData(aFe1pSDK3));
                        if (!file3.exists()) {
                            file3.mkdirs();
                        }
                        File[] listFiles = file3.listFiles();
                        if (listFiles != null && (o12 = kotlin.collections.n.o1(listFiles, new Comparator() { // from class: com.appsflyer.internal.AFc1vSDK.4
                            @Override // java.util.Comparator
                            public final int compare(T t10, T t11) {
                                return ps.a.a(((File) t10).getName(), ((File) t11).getName());
                            }
                        })) != null && (V0 = CollectionsKt.V0(o12, i10)) != null) {
                            for (File file4 : V0) {
                                file4.delete();
                                AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Cache entry " + file4.getName() + " removed", false, 4, null);
                            }
                        }
                    }
                    getMonetizationNetwork();
                } else {
                    throw new UnsupportedOperationException("Cache do not support this type of events");
                }
            }
            return valueOf;
        } catch (Exception e11) {
            exc = e11;
            if (file != null) {
                file.delete();
            }
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not cache request", exc, false, false, false, false, 120, null);
            return null;
        }
    }
}
