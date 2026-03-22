package com.mbridge.msdk.foundation.tools;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.resource.MBResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DynamicViewResourceManager.java */
/* loaded from: classes5.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    static final List<String> f27523a;

    /* compiled from: DynamicViewResourceManager.java */
    /* loaded from: classes5.dex */
    public interface c {
        void a(String str, DownloadError downloadError);

        void a(String str, String str2, String str3, String str4, boolean z10);
    }

    static {
        ArrayList arrayList = new ArrayList(4);
        f27523a = arrayList;
        arrayList.add("mbridge_splash_native_template_v_v1.xml");
        arrayList.add("mbridge_splash_native_template_h_v1.xml");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:(2:5|6)|7|(2:8|9)|(4:(17:11|(1:65)|15|16|(7:18|19|20|(2:(1:(1:24)(2:55|56))|59)(1:60)|57|26|(5:44|45|46|47|48)(1:(6:31|32|33|34|35|36)(1:43)))|63|19|20|(0)(0)|57|26|(1:28)|44|45|46|47|48)|46|47|48)|67|(1:13)|65|15|16|(0)|63|19|20|(0)(0)|57|26|(0)|44|45) */
    /* JADX WARN: Can't wrap try/catch for region: R(23:(2:5|6)|7|8|9|(17:11|(1:65)|15|16|(7:18|19|20|(2:(1:(1:24)(2:55|56))|59)(1:60)|57|26|(5:44|45|46|47|48)(1:(6:31|32|33|34|35|36)(1:43)))|63|19|20|(0)(0)|57|26|(1:28)|44|45|46|47|48)|67|(1:13)|65|15|16|(0)|63|19|20|(0)(0)|57|26|(0)|44|45|46|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
        if (r14 != 5) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0103, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0104, code lost:
        com.mbridge.msdk.foundation.tools.p0.b("DynamicViewResourceManager", r0.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[Catch: Exception -> 0x006b, TRY_LEAVE, TryCatch #0 {Exception -> 0x006b, blocks: (B:18:0x0060, B:20:0x0066), top: B:57:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c A[Catch: Exception -> 0x00a3, TRY_LEAVE, TryCatch #4 {Exception -> 0x00a3, blocks: (B:31:0x008c, B:32:0x0094, B:33:0x009c), top: B:66:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r14, java.lang.String r15, java.lang.String r16, com.mbridge.msdk.foundation.tools.y.c r17, com.mbridge.msdk.foundation.entity.CampaignEx r18) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.y.a(int, java.lang.String, java.lang.String, com.mbridge.msdk.foundation.tools.y$c, com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private static String b(int i10, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            String path = new URL(str2).getPath();
            String substring = path.substring(path.lastIndexOf(47) + 1);
            return !TextUtils.isEmpty(substring) ? substring.replace(".zip", "") : "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String path = new URL(str).getPath();
            String substring = path.substring(path.lastIndexOf(47) + 1);
            if (TextUtils.isEmpty(substring)) {
                return "";
            }
            String replace = substring.replace(".zip", "");
            List<String> list = f27523a;
            return list != null ? !list.contains(replace) ? replace : "" : "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicViewResourceManager.java */
    /* loaded from: classes5.dex */
    public class a implements OnDownloadStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27524a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27525b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f27526c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27527d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f27528e;

        a(String str, String str2, c cVar, String str3, String str4) {
            this.f27524a = str;
            this.f27525b = str2;
            this.f27526c = cVar;
            this.f27527d = str3;
            this.f27528e = str4;
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                String str2 = this.f27524a;
                MBResourceManager.getInstance().unZip(this.f27524a + File.separator + this.f27525b, str2);
                if (this.f27526c != null) {
                    if (downloadMessage == null) {
                        str = "";
                    } else {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    }
                    try {
                        this.f27526c.a(this.f27527d, str2, this.f27528e, str, false);
                    } catch (Exception e10) {
                        p0.b("DynamicViewResourceManager", e10.getMessage());
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            c cVar = this.f27526c;
            if (cVar != null) {
                try {
                    cVar.a(this.f27527d, downloadError);
                } catch (Exception e10) {
                    p0.b("DynamicViewResourceManager", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicViewResourceManager.java */
    /* loaded from: classes5.dex */
    public class b implements OnDownloadStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27529a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27530b;

        b(String str, String str2) {
            this.f27529a = str;
            this.f27530b = str2;
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            try {
                MBResourceManager.getInstance().unZip(this.f27529a + File.separator + this.f27530b, this.f27529a);
            } catch (Exception unused) {
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
        }
    }

    public static String a(int i10, String str, String str2) {
        String str3;
        File file;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            str3 = b(i10, str, str2);
        } catch (Exception unused) {
            str3 = "";
        }
        String str4 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
        if (!TextUtils.isEmpty(str3)) {
            file = new File(str4, str3);
            if (file != null || !file.exists()) {
                file = new File(str4 + File.separator + str3.replace(".xml", ""), str3);
            }
            return file.getPath();
        }
        file = null;
        if (file != null) {
        }
        file = new File(str4 + File.separator + str3.replace(".xml", ""), str3);
        return file.getPath();
    }

    public static String a(String str) {
        String str2;
        String str3;
        File file;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_NATMP);
            if (!TextUtils.isEmpty(queryParameter)) {
                if (!queryParameter.equals("1")) {
                    return "";
                }
            }
        } catch (Throwable unused) {
        }
        try {
            str2 = b(str);
        } catch (Exception unused2) {
            str2 = "";
        }
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            str3 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
            file = new File(str3, str2);
        } catch (Exception unused3) {
        }
        if (file.isFile() && file.exists()) {
            return file.getPath();
        }
        String path = new URL(str).getPath();
        a(str, path.substring(path.lastIndexOf(47) + 1), str3, str2);
        return "";
    }

    private static final void a(String str, String str2, String str3, String str4, c cVar, CampaignEx campaignEx, int i10) throws Exception {
        p0.a("test_zip_download ", "start download path： " + str3 + str2);
        DownloadMessage<?> downloadMessage = new DownloadMessage<>(campaignEx, str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER);
        downloadMessage.addExtra("resource_type", Integer.valueOf(i10));
        MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout((long) com.mbridge.msdk.foundation.same.a.f27039u).withConnectTimeout((long) com.mbridge.msdk.foundation.same.a.f27038t).withTimeout(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS).withWriteTimeout((long) com.mbridge.msdk.foundation.same.a.f27037s).with("download_scene", "download_dynamic_view").withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new a(str3, str2, cVar, str, str4)).build().start();
    }

    private static final void a(String str, String str2, String str3, String str4) throws Exception {
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withReadTimeout(com.mbridge.msdk.foundation.same.a.f27039u).withConnectTimeout(com.mbridge.msdk.foundation.same.a.f27033o).with("download_scene", "download_dynamic_view").withWriteTimeout(com.mbridge.msdk.foundation.same.a.f27037s).withTimeout(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS).withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new b(str3, str2)).build().start();
    }
}
