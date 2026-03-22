package com.bykv.vk.openvk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.e;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: UploadStatistic.java */
/* loaded from: classes3.dex */
public final class c {
    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.buffer.a.a aVar) {
        IStatisticMonitor q10 = bVar.q();
        if (q10 != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("params_for_special", "gecko");
                jSONObject.put("device_id", bVar.r());
                jSONObject.put("os", 0);
                jSONObject.put("app_version", bVar.o());
                jSONObject.put("api_version", "v3");
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, bVar.k());
                jSONObject.put("x_tt_logid", aVar.f11352e);
                jSONObject.put("http_status", aVar.f11354g);
                jSONObject.put("err_msg", aVar.f11351d);
                if (TextUtils.isEmpty(aVar.f11352e)) {
                    jSONObject.put("deployments_info", aVar.f11349b);
                    jSONObject.put("local_info", aVar.f11348a);
                    jSONObject.put("custom_info", aVar.f11350c);
                } else {
                    jSONObject.put("deployments_info", "");
                    jSONObject.put("local_info", "");
                    jSONObject.put("custom_info", "");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Build.VERSION.SDK_INT);
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, sb2.toString());
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "android");
                jSONObject.put("device_model", Build.MODEL);
                jSONObject.put("ac", aVar.f11353f);
                q10.upload("geckosdk_query_pkgs", jSONObject);
            } catch (Throwable th2) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th2);
            }
        }
    }

    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list != null && !list.isEmpty()) {
            return list;
        }
        return null;
    }

    private static Integer a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static void a(com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar, List<StatisticModel.PackageStatisticModel> list) {
        if (aVar.f11468z && aVar.A) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 0;
            packageStatisticModel.accessKey = aVar.f11443a;
            packageStatisticModel.groupName = aVar.f11444b;
            packageStatisticModel.channel = aVar.f11445c;
            packageStatisticModel.f11441ac = aVar.f11456n;
            packageStatisticModel.f11442id = aVar.f11458p;
            packageStatisticModel.downloadRetryTimes = a(aVar.f11463u);
            packageStatisticModel.downloadUrl = aVar.f11462t;
            packageStatisticModel.downloadFailRecords = b(aVar.f11463u);
            packageStatisticModel.downloadDuration = Long.valueOf(aVar.f11465w - aVar.f11464v);
            if (aVar.B) {
                StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                list.add(packageStatisticModel2);
                packageStatisticModel2.accessKey = aVar.f11443a;
                packageStatisticModel2.groupName = aVar.f11444b;
                packageStatisticModel2.statsType = 2;
                packageStatisticModel2.f11442id = aVar.f11458p;
                packageStatisticModel2.channel = aVar.f11445c;
                packageStatisticModel2.activeCheckDuration = Long.valueOf(aVar.f11466x - aVar.f11465w);
                packageStatisticModel2.applyDuration = Long.valueOf(aVar.f11467y - aVar.f11466x);
                return;
            }
            StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel3);
            packageStatisticModel3.statsType = 3;
            packageStatisticModel3.accessKey = aVar.f11443a;
            packageStatisticModel3.groupName = aVar.f11444b;
            packageStatisticModel3.errCode = "500";
            packageStatisticModel3.f11442id = aVar.f11458p;
            packageStatisticModel3.channel = aVar.f11445c;
            packageStatisticModel3.errMsg = aVar.D;
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel4);
        packageStatisticModel4.statsType = 1;
        packageStatisticModel4.accessKey = aVar.f11443a;
        packageStatisticModel4.groupName = aVar.f11444b;
        packageStatisticModel4.channel = aVar.f11445c;
        packageStatisticModel4.f11441ac = aVar.f11456n;
        packageStatisticModel4.f11442id = aVar.f11458p;
        packageStatisticModel4.downloadRetryTimes = a(aVar.f11463u);
        packageStatisticModel4.downloadUrl = aVar.f11462t;
        packageStatisticModel4.downloadFailRecords = b(aVar.f11463u);
        if (!aVar.f11468z) {
            packageStatisticModel4.errCode = "300";
            List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list2 = aVar.f11463u;
            if (list2 == null || list2.isEmpty()) {
                return;
            }
            packageStatisticModel4.errMsg = aVar.f11463u.get(0).reason;
        } else if (aVar.A) {
        } else {
            packageStatisticModel4.errCode = "450";
            packageStatisticModel4.errMsg = aVar.C;
        }
    }

    public static void a(final com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        StatisticModel statisticModel;
        ArrayList<StatisticModel.PackageStatisticModel> arrayList = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar2 : aVar.a()) {
            if (aVar2.f11446d != null || aVar2.f11448f != 0) {
                if (aVar2.f11450h && aVar2.f11451i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 100;
                    packageStatisticModel.groupName = aVar2.f11444b;
                    packageStatisticModel.accessKey = aVar2.f11443a;
                    packageStatisticModel.channel = aVar2.f11445c;
                    packageStatisticModel.f11441ac = aVar2.f11456n;
                    packageStatisticModel.f11442id = aVar2.f11458p;
                    packageStatisticModel.patchId = aVar2.f11457o;
                    packageStatisticModel.downloadRetryTimes = a(aVar2.f11447e);
                    packageStatisticModel.downloadUrl = aVar2.f11446d;
                    packageStatisticModel.downloadFailRecords = b(aVar2.f11447e);
                    packageStatisticModel.downloadDuration = Long.valueOf(aVar2.f11449g - aVar2.f11448f);
                    if (!aVar2.f11452j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel2);
                        packageStatisticModel2.statsType = 100;
                        packageStatisticModel2.channel = aVar2.f11445c;
                        packageStatisticModel2.errCode = "403";
                        packageStatisticModel2.errMsg = aVar2.f11460r;
                        packageStatisticModel2.f11441ac = aVar2.f11456n;
                        packageStatisticModel2.patchId = aVar2.f11457o;
                        packageStatisticModel2.f11442id = aVar2.f11458p;
                        packageStatisticModel2.downloadRetryTimes = a(aVar2.f11447e);
                        packageStatisticModel2.downloadUrl = aVar2.f11446d;
                        packageStatisticModel2.downloadFailRecords = b(aVar2.f11447e);
                    } else if (aVar2.f11453k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.accessKey = aVar2.f11443a;
                        packageStatisticModel3.groupName = aVar2.f11444b;
                        packageStatisticModel3.statsType = 102;
                        packageStatisticModel3.patchId = aVar2.f11457o;
                        packageStatisticModel3.f11442id = aVar2.f11458p;
                        packageStatisticModel3.channel = aVar2.f11445c;
                        packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar2.f11454l - aVar2.f11449g);
                        packageStatisticModel3.applyDuration = Long.valueOf(aVar2.f11455m - aVar2.f11454l);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = aVar2.f11443a;
                        packageStatisticModel4.groupName = aVar2.f11444b;
                        packageStatisticModel4.statsType = 103;
                        packageStatisticModel4.errCode = "501";
                        packageStatisticModel4.channel = aVar2.f11445c;
                        packageStatisticModel4.patchId = aVar2.f11457o;
                        packageStatisticModel4.f11442id = aVar2.f11458p;
                        packageStatisticModel4.errMsg = aVar2.f11461s;
                        a(aVar2, arrayList);
                    }
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel5);
                    packageStatisticModel5.statsType = 101;
                    packageStatisticModel5.accessKey = aVar2.f11443a;
                    packageStatisticModel5.groupName = aVar2.f11444b;
                    packageStatisticModel5.channel = aVar2.f11445c;
                    packageStatisticModel5.f11441ac = aVar2.f11456n;
                    packageStatisticModel5.patchId = aVar2.f11457o;
                    packageStatisticModel5.f11442id = aVar2.f11458p;
                    packageStatisticModel5.downloadRetryTimes = a(aVar2.f11447e);
                    packageStatisticModel5.downloadUrl = aVar2.f11446d;
                    packageStatisticModel5.downloadFailRecords = b(aVar2.f11447e);
                    if (!aVar2.f11450h) {
                        packageStatisticModel5.errCode = "301";
                        List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list = aVar2.f11447e;
                        if (list != null && !list.isEmpty()) {
                            packageStatisticModel5.errMsg = aVar2.f11447e.get(0).reason;
                        }
                    } else if (!aVar2.f11451i) {
                        packageStatisticModel5.errCode = "402";
                        packageStatisticModel5.errMsg = aVar2.f11459q;
                    }
                    a(aVar2, arrayList);
                }
            }
            a(aVar2, arrayList);
        }
        Context a10 = bVar.a();
        arrayList.addAll(com.bykv.vk.openvk.preload.geckox.a.a.a(a10));
        if (arrayList.isEmpty()) {
            statisticModel = null;
        } else {
            Common common = new Common(bVar.k(), bVar.o(), bVar.r(), com.bykv.vk.openvk.preload.geckox.utils.a.b(a10), e.a(a10), bVar.l(), bVar.m());
            StatisticModel statisticModel2 = new StatisticModel();
            statisticModel2.common = common;
            statisticModel2.packages = arrayList;
            String uuid = UUID.randomUUID().toString();
            for (StatisticModel.PackageStatisticModel packageStatisticModel6 : arrayList) {
                packageStatisticModel6.logId = uuid;
            }
            statisticModel = statisticModel2;
        }
        if (statisticModel == null || statisticModel.packages == null) {
            return;
        }
        IStatisticMonitor q10 = bVar.q();
        if (q10 != null) {
            try {
                for (StatisticModel.PackageStatisticModel packageStatisticModel7 : statisticModel.packages) {
                    Common common2 = statisticModel.common;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("params_for_special", "gecko");
                    jSONObject.put(TtmlNode.TAG_REGION, common2.region);
                    jSONObject.put("err_code", packageStatisticModel7.errCode);
                    jSONObject.put("err_msg", packageStatisticModel7.errMsg);
                    jSONObject.put("sdk_version", common2.sdkVersion);
                    jSONObject.put(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ACCESS_KEY, packageStatisticModel7.accessKey);
                    jSONObject.put("stats_type", packageStatisticModel7.statsType);
                    jSONObject.put("device_id", common2.deviceId);
                    Long l10 = packageStatisticModel7.patchId;
                    jSONObject.put("patch_id", l10 == null ? 0L : l10.longValue());
                    jSONObject.put("group_name", packageStatisticModel7.groupName);
                    jSONObject.put("os", common2.f11429os);
                    jSONObject.put("app_version", common2.appVersion);
                    jSONObject.put("device_model", common2.deviceModel);
                    jSONObject.put(AppsFlyerProperties.CHANNEL, packageStatisticModel7.channel);
                    Long l11 = packageStatisticModel7.f11442id;
                    jSONObject.put("id", l11 == null ? 0L : l11.longValue());
                    jSONObject.put("ac", common2.f11428ac);
                    Integer num = packageStatisticModel7.downloadRetryTimes;
                    jSONObject.put("download_retry_times", num == null ? 0 : num.intValue());
                    String str = packageStatisticModel7.downloadUrl;
                    Object obj = "";
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put(DownloadModel.DOWNLOAD_URL, str);
                    jSONObject.put("download_duration", packageStatisticModel7.downloadDuration);
                    List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list2 = packageStatisticModel7.downloadFailRecords;
                    if (list2 != null) {
                        obj = list2;
                    }
                    jSONObject.put("download_fail_records", obj);
                    jSONObject.put("log_id", packageStatisticModel7.logId);
                    Long l12 = packageStatisticModel7.activeCheckDuration;
                    jSONObject.put("active_check_duration", l12 == null ? 0L : l12.longValue());
                    Long l13 = packageStatisticModel7.applyDuration;
                    jSONObject.put("apply_duration", l13 == null ? 0L : l13.longValue());
                    q10.upload("geckosdk_update_stats", jSONObject);
                }
            } catch (Throwable th2) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th2);
            }
        }
        if (bVar.c()) {
            try {
                final String a11 = com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(statisticModel);
                if (TextUtils.isEmpty(a11)) {
                    return;
                }
                final String str2 = "https://" + bVar.j() + "/gecko/server/packages/stats";
                com.bykv.vk.openvk.preload.geckox.b.g().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Response doPost;
                        for (int i10 = 0; i10 < 3; i10++) {
                            try {
                                doPost = com.bykv.vk.openvk.preload.geckox.b.this.i().doPost(str2, a11);
                            } catch (Exception e10) {
                                GeckoLogger.w("gecko-debug-tag", "upload statistic:", e10);
                            }
                            if (doPost.code == 200) {
                                if (new JSONObject(doPost.body).getInt("status") == 0) {
                                    return;
                                }
                            } else {
                                throw new NetworkErrorException("net work get failed, code: " + doPost.code + ", url:" + str2);
                                break;
                            }
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }
}
