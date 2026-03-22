package com.bykv.vk.openvk.preload.geckox.d;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.model.ComponentModel;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import java.io.File;
import java.io.FileFilter;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: GetServerChannelVersionInterceptorMulti.java */
/* loaded from: classes3.dex */
public class c extends com.bykv.vk.openvk.preload.b.d<Map<String, List<Pair<String, Long>>>, List<UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.b f11386d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Map<String, Object>> f11387e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, List<CheckRequestBodyModel.TargetChannel>> f11388f;

    /* renamed from: g  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.e.a f11389g;

    /* renamed from: h  reason: collision with root package name */
    private String f11390h;

    /* renamed from: i  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.buffer.a.a f11391i = new com.bykv.vk.openvk.preload.geckox.buffer.a.a();

    /* compiled from: GetServerChannelVersionInterceptorMulti.java */
    /* loaded from: classes3.dex */
    public static class a extends RuntimeException {
        a(String str) {
            super(str);
        }
    }

    /* compiled from: GetServerChannelVersionInterceptorMulti.java */
    /* loaded from: classes3.dex */
    public static class b extends RuntimeException {
        b(String str, Throwable th2) {
            super(str, th2);
        }
    }

    /* compiled from: GetServerChannelVersionInterceptorMulti.java */
    /* renamed from: com.bykv.vk.openvk.preload.geckox.d.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0138c extends RuntimeException {
        C0138c(String str, Throwable th2) {
            super(str, th2);
        }
    }

    private static void b(List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> list) {
        if (list == null) {
            return;
        }
        for (Pair<String, com.bykv.vk.openvk.preload.geckox.g.a> pair : list) {
            try {
                ((com.bykv.vk.openvk.preload.geckox.g.a) pair.second).a();
            } catch (Exception e10) {
                GeckoLogger.e("gecko-debug-tag", "releaseLock:", e10);
            }
        }
    }

    private List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> c(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UpdatePackage updatePackage : list) {
            try {
                File file = new File(new File(this.f11386d.n(), updatePackage.getAccessKey()), updatePackage.getChannel());
                if (file.isFile()) {
                    com.bykv.vk.openvk.preload.geckox.utils.b.a(file);
                }
                if (!file.mkdirs() && !file.isDirectory()) {
                    GeckoLogger.d("gecko-debug-tag", "can not create channel dir：", file.getAbsolutePath());
                    throw new RuntimeException("can not create channel dir:" + file.getAbsolutePath());
                    break;
                }
                com.bykv.vk.openvk.preload.geckox.g.a a10 = com.bykv.vk.openvk.preload.geckox.g.a.a(file.getAbsolutePath() + File.separator + "update.lock");
                if (a10 != null) {
                    arrayList.add(new Pair(updatePackage.getChannel(), a10));
                    arrayList2.add(updatePackage);
                } else {
                    com.bykv.vk.openvk.preload.geckox.e.a aVar = this.f11389g;
                    updatePackage.getChannel();
                }
            } catch (Exception e10) {
                GeckoLogger.e("gecko-debug-tag", "filterChannel:", e10);
                updatePackage.getChannel();
                com.bykv.vk.openvk.preload.geckox.e.a aVar2 = this.f11389g;
            }
        }
        list.clear();
        list.addAll(arrayList2);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        this.f11386d = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.f11387e = (Map) objArr[1];
        this.f11388f = (Map) objArr[2];
        this.f11389g = (com.bykv.vk.openvk.preload.geckox.e.a) objArr[3];
        this.f11390h = (String) objArr[4];
    }

    private String b(Map<String, List<Pair<String, Long>>> map) {
        List<CheckRequestBodyModel.TargetChannel> list;
        CheckRequestBodyModel checkRequestBodyModel = new CheckRequestBodyModel();
        Context a10 = this.f11386d.a();
        checkRequestBodyModel.setCommon(new Common(this.f11386d.k(), this.f11386d.o(), this.f11386d.r(), com.bykv.vk.openvk.preload.geckox.utils.a.b(a10), com.bykv.vk.openvk.preload.geckox.utils.e.a(a10), this.f11386d.l(), this.f11386d.m()));
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<Pair<String, Long>>> entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            for (Pair<String, Long> pair : entry.getValue()) {
                CheckRequestBodyModel.LocalChannel localChannel = new CheckRequestBodyModel.LocalChannel();
                localChannel.localVersion = (Long) pair.second;
                hashMap2.put(pair.first, localChannel);
            }
            hashMap.put(entry.getKey(), hashMap2);
        }
        try {
            com.bykv.vk.openvk.preload.a.d b10 = com.bykv.vk.openvk.preload.geckox.c.b.a().b();
            this.f11391i.f11348a = b10.a(hashMap);
            checkRequestBodyModel.setLocal(hashMap);
            HashMap hashMap3 = new HashMap();
            for (String str : this.f11386d.e()) {
                CheckRequestBodyModel.Group group = new CheckRequestBodyModel.Group();
                group.groupName = this.f11390h;
                Map<String, List<CheckRequestBodyModel.TargetChannel>> map2 = this.f11388f;
                if (map2 != null && !map2.isEmpty() && (list = this.f11388f.get(str)) != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    group.targetChannels = arrayList;
                    arrayList.addAll(list);
                }
                hashMap3.put(str, group);
            }
            this.f11391i.f11349b = b10.a(hashMap3);
            checkRequestBodyModel.setDeployments(hashMap3);
            Map<String, Map<String, Object>> map3 = this.f11387e;
            if (map3 != null) {
                this.f11391i.f11350c = b10.a(map3);
                checkRequestBodyModel.setCustom(this.f11387e);
            }
            return b10.a(checkRequestBodyModel);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.b.d
    public Object a(com.bykv.vk.openvk.preload.b.b<List<UpdatePackage>> bVar, Map<String, List<Pair<String, Long>>> map) throws Throwable {
        List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> list;
        GeckoLogger.d("gecko-debug-tag", "start get server channel version[v3]... local channel version:", map);
        Map<String, List<UpdatePackage>> a10 = a(map);
        com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f11386d, this.f11391i);
        for (Map.Entry<String, List<UpdatePackage>> entry : a10.entrySet()) {
            Iterator<UpdatePackage> it = entry.getValue().iterator();
            while (it.hasNext()) {
                UpdatePackage next = it.next();
                long localVersion = next.getLocalVersion();
                long version = next.getVersion();
                if (version < localVersion) {
                    GeckoLogger.d("gecko-debug-tag", next.getChannel(), "rollback：", Long.valueOf(localVersion), "->", Long.valueOf(version));
                    File[] listFiles = new File(this.f11386d.n(), next.getAccessKey() + File.separator + next.getChannel()).listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.1
                        @Override // java.io.FileFilter
                        public final boolean accept(File file) {
                            return file.isDirectory();
                        }
                    });
                    if (listFiles != null && listFiles.length != 0) {
                        for (File file : listFiles) {
                            try {
                                int i10 = (Long.parseLong(file.getName()) > version ? 1 : (Long.parseLong(file.getName()) == version ? 0 : -1));
                                if (i10 > 0) {
                                    final File file2 = new File(file.getParent(), file.getName() + "--pending-delete");
                                    file.renameTo(file2);
                                    com.bykv.vk.openvk.preload.geckox.utils.c.a().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            com.bykv.vk.openvk.preload.geckox.utils.b.a(file2);
                                        }
                                    });
                                } else if (i10 == 0) {
                                    it.remove();
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<UpdatePackage>> entry2 : a10.entrySet()) {
            arrayList.addAll(entry2.getValue());
        }
        Object obj = null;
        try {
            list = c(arrayList);
            try {
                obj = bVar.a((com.bykv.vk.openvk.preload.b.b<List<UpdatePackage>>) arrayList);
                b(list);
                GeckoLogger.d("gecko-debug-tag", "all channel update finished");
            } catch (Throwable th2) {
                th = th2;
                try {
                    GeckoLogger.e("gecko-debug-tag", "filterChannel:", th);
                    a(arrayList);
                    return obj;
                } finally {
                    b(list);
                    GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                }
            }
        } catch (Throwable th3) {
            th = th3;
            list = null;
        }
        a(arrayList);
        return obj;
    }

    private void a(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return;
        }
        for (UpdatePackage updatePackage : list) {
            com.bykv.vk.openvk.preload.geckox.a.c.a(new File(new File(this.f11386d.n(), updatePackage.getAccessKey()), updatePackage.getChannel()).getAbsolutePath());
        }
    }

    private Map<String, List<UpdatePackage>> a(Map<String, List<Pair<String, Long>>> map) throws Exception {
        String b10 = b(map);
        String str = "https://" + this.f11386d.j() + "/gecko/server/v3/package";
        try {
            this.f11391i.f11353f = com.bykv.vk.openvk.preload.geckox.utils.e.a(this.f11386d.a());
            Response doPost = this.f11386d.i().doPost(str, b10);
            com.bykv.vk.openvk.preload.geckox.buffer.a.a aVar = this.f11391i;
            aVar.f11354g = doPost.code;
            aVar.f11351d = doPost.msg;
            Map<String, String> map2 = doPost.headers;
            String str2 = "";
            if (map2 != null && !map2.isEmpty()) {
                String str3 = map2.get("x-tt-logid");
                if (TextUtils.isEmpty(str3)) {
                    str3 = map2.get("X-Tt-Logid");
                    if (TextUtils.isEmpty(str3)) {
                        String str4 = map2.get("X-TT-LOGID");
                        if (!TextUtils.isEmpty(str4)) {
                            str2 = str4;
                        }
                    }
                }
                str2 = str3;
            }
            aVar.f11352e = str2;
            if (doPost.code == 200) {
                String str5 = doPost.body;
                GeckoLogger.d("gecko-debug-tag", "response:", str5);
                try {
                    com.bykv.vk.openvk.preload.geckox.model.Response response = (com.bykv.vk.openvk.preload.geckox.model.Response) (str5 == null ? null : com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(new StringReader(str5), new com.bykv.vk.openvk.preload.a.c.a<com.bykv.vk.openvk.preload.geckox.model.Response<ComponentModel>>() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.3
                    }.b()));
                    int i10 = response.status;
                    if (i10 == 0) {
                        if (response.data != 0) {
                            com.bykv.vk.openvk.preload.geckox.a.a.a(this.f11386d.a(), ((ComponentModel) response.data).getUniversalStrategies(), this.f11386d.n(), this.f11389g);
                            Map<String, List<UpdatePackage>> packages = ((ComponentModel) response.data).getPackages();
                            if (packages != null && !packages.isEmpty()) {
                                for (String str6 : this.f11386d.e()) {
                                    List<UpdatePackage> list = packages.get(str6);
                                    if (list != null && !list.isEmpty()) {
                                        for (UpdatePackage updatePackage : list) {
                                            updatePackage.setAccessKey(str6);
                                            updatePackage.setLocalVersion(a(map.get(str6), updatePackage.getChannel()));
                                        }
                                    }
                                }
                                return packages;
                            }
                            com.bykv.vk.openvk.preload.geckox.a.a.a(this.f11386d);
                            return new HashMap();
                        } else {
                            com.bykv.vk.openvk.preload.geckox.buffer.a.a aVar2 = this.f11391i;
                            aVar2.f11351d = "check update error：response.data==null";
                            com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f11386d, aVar2);
                            throw new a("check update error：response.data==null");
                        }
                    }
                    if (i10 == 2000) {
                        com.bykv.vk.openvk.preload.geckox.a.a.a(this.f11386d);
                        return new HashMap();
                    }
                    String str7 = "check update error，unknow status code，response.status：" + response.status;
                    com.bykv.vk.openvk.preload.geckox.buffer.a.a aVar3 = this.f11391i;
                    aVar3.f11351d = str7;
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f11386d, aVar3);
                    throw new a(str7);
                } catch (Throwable th2) {
                    this.f11391i.f11351d = "json parse failed：" + th2.getMessage();
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f11386d, this.f11391i);
                    throw new b("json parse failed：" + str5 + " caused by:" + th2.getMessage(), th2);
                }
            }
            throw new NetworkErrorException("net work get failed, code: " + doPost.code + ", url:" + str);
        } catch (Exception e10) {
            com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f11386d, this.f11391i);
            throw new C0138c("request failed：url:" + str + ", caused by:" + e10.getMessage(), e10);
        }
    }

    private static long a(List<Pair<String, Long>> list, String str) {
        for (Pair<String, Long> pair : list) {
            if (((String) pair.first).equals(str)) {
                return ((Long) pair.second).longValue();
            }
        }
        return 0L;
    }
}
