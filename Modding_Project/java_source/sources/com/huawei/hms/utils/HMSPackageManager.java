package com.huawei.hms.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidException;
import android.util.Pair;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.HmsCheckedState;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public class HMSPackageManager {

    /* renamed from: o  reason: collision with root package name */
    private static HMSPackageManager f22379o;

    /* renamed from: p  reason: collision with root package name */
    private static final Object f22380p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private static final Object f22381q = new Object();

    /* renamed from: r  reason: collision with root package name */
    private static final Object f22382r = new Object();

    /* renamed from: s  reason: collision with root package name */
    private static final Map<String, String> f22383s;

    /* renamed from: a  reason: collision with root package name */
    private final Context f22384a;

    /* renamed from: b  reason: collision with root package name */
    private final PackageManagerHelper f22385b;

    /* renamed from: c  reason: collision with root package name */
    private String f22386c;

    /* renamed from: d  reason: collision with root package name */
    private String f22387d;

    /* renamed from: e  reason: collision with root package name */
    private int f22388e;

    /* renamed from: f  reason: collision with root package name */
    private String f22389f;

    /* renamed from: g  reason: collision with root package name */
    private String f22390g;

    /* renamed from: h  reason: collision with root package name */
    private String f22391h;

    /* renamed from: i  reason: collision with root package name */
    private String f22392i;

    /* renamed from: j  reason: collision with root package name */
    private int f22393j;

    /* renamed from: k  reason: collision with root package name */
    private int f22394k;

    /* renamed from: l  reason: collision with root package name */
    private long f22395l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f22396m;

    /* renamed from: n  reason: collision with root package name */
    private int f22397n;

    /* loaded from: classes5.dex */
    public static class PackagePriorityInfo implements Comparable<PackagePriorityInfo> {

        /* renamed from: a  reason: collision with root package name */
        private String f22398a;

        /* renamed from: b  reason: collision with root package name */
        private String f22399b;

        /* renamed from: c  reason: collision with root package name */
        private String f22400c;

        /* renamed from: d  reason: collision with root package name */
        private String f22401d;

        /* renamed from: e  reason: collision with root package name */
        private String f22402e;

        /* renamed from: f  reason: collision with root package name */
        private Long f22403f;

        public PackagePriorityInfo(String str, String str2, String str3, String str4, String str5, long j10) {
            this.f22398a = str;
            this.f22399b = str2;
            this.f22400c = str3;
            this.f22401d = str4;
            this.f22402e = str5;
            this.f22403f = Long.valueOf(j10);
        }

        @Override // java.lang.Comparable
        public int compareTo(PackagePriorityInfo packagePriorityInfo) {
            if (TextUtils.equals(this.f22402e, packagePriorityInfo.f22402e)) {
                return this.f22403f.compareTo(packagePriorityInfo.f22403f);
            }
            return this.f22402e.compareTo(packagePriorityInfo.f22402e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Comparator<ResolveInfo> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            String str = resolveInfo.serviceInfo.applicationInfo.packageName;
            String str2 = resolveInfo2.serviceInfo.applicationInfo.packageName;
            if (HMSPackageManager.f22383s.containsKey(str) && HMSPackageManager.f22383s.containsKey(str2)) {
                return str.compareTo(str2);
            }
            if (HMSPackageManager.f22383s.containsKey(str)) {
                return -1;
            }
            if (HMSPackageManager.f22383s.containsKey(str2)) {
                return 1;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.i("HMSPackageManager", "enter asyncOnceCheckMDMState");
            try {
                List<ResolveInfo> queryIntentServices = HMSPackageManager.this.f22384a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128);
                if (queryIntentServices != null && queryIntentServices.size() != 0) {
                    for (ResolveInfo resolveInfo : queryIntentServices) {
                        if ("com.huawei.hwid".equals(resolveInfo.serviceInfo.applicationInfo.packageName)) {
                            HMSPackageManager.this.r();
                        }
                    }
                    HMSLog.i("HMSPackageManager", "quit asyncOnceCheckMDMState");
                }
            } catch (Exception e10) {
                HMSLog.e("HMSPackageManager", "asyncOnceCheckMDMState query hms action failed. " + e10.getMessage());
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f22383s = hashMap;
        hashMap.put("com.huawei.hwid", "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05");
        hashMap.put("com.huawei.hwid.tv", "3517262215D8D3008CBF888750B6418EDC4D562AC33ED6874E0D73ABA667BC3C");
    }

    private HMSPackageManager(Context context) {
        this.f22384a = context;
        this.f22385b = new PackageManagerHelper(context);
    }

    private void A() {
        synchronized (f22381q) {
            try {
                Pair<String, String> x10 = x();
                if (x10 == null) {
                    HMSLog.e("HMSPackageManager", "<initHmsPackageInfo> Failed to find HMS apk");
                    w();
                    return;
                }
                String str = (String) x10.first;
                this.f22386c = str;
                this.f22387d = (String) x10.second;
                this.f22388e = this.f22385b.getPackageVersionCode(str);
                HMSLog.i("HMSPackageManager", "<initHmsPackageInfo> Succeed to find HMS apk: " + this.f22386c + " version: " + this.f22388e);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void B() {
        synchronized (f22381q) {
            try {
                Pair<String, String> y10 = y();
                if (y10 == null) {
                    HMSLog.e("HMSPackageManager", "<initHmsPackageInfoForMultiService> Failed to find HMS apk");
                    u();
                    AgHmsUpdateState.getInstance().setCheckedState(HmsCheckedState.NOT_NEED_UPDATE);
                    return;
                }
                this.f22389f = (String) y10.first;
                this.f22390g = (String) y10.second;
                this.f22393j = this.f22385b.getPackageVersionCode(getHMSPackageNameForMultiService());
                v(this.f22389f);
                HMSLog.i("HMSPackageManager", "<initHmsPackageInfoForMultiService> Succeed to find HMS apk: " + this.f22389f + " version: " + this.f22393j);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean C() {
        Bundle bundle;
        PackageManager packageManager = this.f22384a.getPackageManager();
        if (packageManager == null) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to get 'PackageManager' instance.");
            return true;
        }
        try {
        } catch (AndroidException unused) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.");
        } catch (RuntimeException e10) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.", e10);
        }
        if (TextUtils.isEmpty(this.f22391h) || (!this.f22391h.equals(PackageConstants.GENERAL_SERVICES_ACTION) && !this.f22391h.equals(PackageConstants.INTERNAL_SERVICES_ACTION))) {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(getHMSPackageName(), 128).applicationInfo;
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("com.huawei.hms.kit.api_level:hmscore") && (getHmsVersionCode() >= 50000000 || getHmsVersionCode() <= 19999999)) {
                HMSLog.i("HMSPackageManager", "MinApkVersion is disabled.");
                return false;
            }
            return true;
        }
        HMSLog.i("HMSPackageManager", "action = " + this.f22391h + " exist");
        return false;
    }

    private Pair<String, String> b(Bundle bundle, String str, String str2, String str3) {
        String str4;
        if (bundle == null) {
            HMSLog.e("HMSPackageManager", "DSS check: " + str + " for metadata is null");
            return null;
        }
        this.f22397n = 2;
        if (i(bundle, str, str2)) {
            HMSLog.i("HMSPackageManager", "support DSS V3 check");
            str3 = str2;
            str4 = "hms_app_signer_v3";
        } else {
            str4 = "hms_app_signer";
        }
        if (!bundle.containsKey(str4)) {
            HMSLog.e("HMSPackageManager", "skip package " + str + " for no " + str4);
            return null;
        } else if (!bundle.containsKey("hms_app_cert_chain")) {
            HMSLog.e("HMSPackageManager", "skip package " + str + " for no cert chain");
            return null;
        } else {
            if (!j(str + ContainerUtils.FIELD_DELIMITER + str3, bundle.getString(str4), bundle.getString("hms_app_cert_chain"))) {
                HMSLog.e("HMSPackageManager", "checkSigner failed");
                return null;
            }
            if (str4.equals("hms_app_signer_v3")) {
                this.f22397n = 3;
            }
            return new Pair<>(str, str3);
        }
    }

    private Pair<String, String> c(String str, String str2) {
        if (n(str, str2)) {
            return new Pair<>(str, str2);
        }
        HMSLog.w("HMSPackageManager", "check sign fail: " + str + "_" + str2);
        return null;
    }

    private static String d(int i10) {
        if (i10 == 1) {
            return "SPOOFED";
        }
        if (i10 == 2) {
            return "SUCCESS";
        }
        if (i10 == 3) {
            return "UNCHECKED";
        }
        HMSLog.e("HMSPackageManager", "invalid checkMDM state: " + i10);
        return "";
    }

    private String e(Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            HMSLog.e("HMSPackageManager", "no " + str + " in metaData");
            return null;
        }
        return bundle.getString(str);
    }

    private String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("priority=");
        if (indexOf == -1) {
            HMSLog.e("HMSPackageManager", "get indexOfIdentifier -1");
            return null;
        }
        int indexOf2 = str.indexOf(",", indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return str.substring(indexOf, indexOf2);
    }

    public static HMSPackageManager getInstance(Context context) {
        synchronized (f22380p) {
            try {
                if (f22379o == null && context != null) {
                    if (context.getApplicationContext() != null) {
                        f22379o = new HMSPackageManager(context.getApplicationContext());
                    } else {
                        f22379o = new HMSPackageManager(context);
                    }
                    f22379o.B();
                    f22379o.l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f22379o;
    }

    private void h(List<ResolveInfo> list) {
        if (list.size() <= 1) {
            return;
        }
        Collections.sort(list, new a());
    }

    private boolean i(Bundle bundle, String str, String str2) {
        if (bundle.containsKey("hms_app_signer_v3") && !n(str, str2) && Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    private boolean j(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            List<X509Certificate> b10 = com.huawei.hms.device.a.b(str3);
            if (b10.size() == 0) {
                HMSLog.e("HMSPackageManager", "certChain is empty");
                return false;
            } else if (!com.huawei.hms.device.a.a(com.huawei.hms.device.a.a(this.f22384a), b10)) {
                HMSLog.e("HMSPackageManager", "failed to verify cert chain");
                return false;
            } else {
                X509Certificate x509Certificate = b10.get(b10.size() - 1);
                if (!com.huawei.hms.device.a.a(x509Certificate, "Huawei CBG HMS")) {
                    HMSLog.e("HMSPackageManager", "CN is invalid");
                    return false;
                } else if (!com.huawei.hms.device.a.b(x509Certificate, "Huawei CBG Cloud Security Signer")) {
                    HMSLog.e("HMSPackageManager", "OU is invalid");
                    return false;
                } else if (com.huawei.hms.device.a.a(x509Certificate, str, str2)) {
                    return true;
                } else {
                    HMSLog.e("HMSPackageManager", "signature is invalid: " + str);
                    return false;
                }
            }
        }
        HMSLog.e("HMSPackageManager", "args is invalid");
        return false;
    }

    private void l() {
        new Thread(new b(), "Thread-asyncOnceCheckMDMState").start();
    }

    private boolean m(String str) {
        if ("com.huawei.hwid".equals(str) && this.f22397n != 3) {
            return false;
        }
        return true;
    }

    private boolean n(String str, String str2) {
        Map<String, String> map = f22383s;
        if (map.containsKey(str) && map.get(str).equalsIgnoreCase(str2)) {
            return true;
        }
        return false;
    }

    private void o(String str) {
        if ("com.huawei.hwid".equals(str) && AgHmsUpdateState.getInstance().isUpdateHms() && this.f22385b.getPackageVersionCode(str) >= AgHmsUpdateState.getInstance().getTargetVersionCode()) {
            AgHmsUpdateState.getInstance().resetUpdateState();
            HMSLog.i("HMSPackageManager", "refresh update state for HMS V3");
        }
    }

    private boolean p() {
        String hmsPath = ReadApkFileUtil.getHmsPath(this.f22384a);
        if (hmsPath == null) {
            HMSLog.i("HMSPackageManager", "hmsPath is null!");
            return false;
        } else if (!ReadApkFileUtil.isCertFound(hmsPath)) {
            HMSLog.i("HMSPackageManager", "NO huawer.cer in HMS!");
            return false;
        } else if (!ReadApkFileUtil.checkSignature()) {
            HMSLog.i("HMSPackageManager", "checkSignature fail!");
            return false;
        } else if (!ReadApkFileUtil.verifyApkHash(hmsPath)) {
            HMSLog.i("HMSPackageManager", "verifyApkHash fail!");
            return false;
        } else {
            return true;
        }
    }

    private boolean q(String str, String str2) {
        if (!Objects.equals(str2, this.f22385b.getPackageSigningCertificate(str)) && !Objects.equals(str2, this.f22385b.getPackageSignature(str))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int r() {
        int i10;
        synchronized (f22382r) {
            try {
                HMSLog.i("HMSPackageManager", "enter checkHmsIsSpoof");
                long packageFirstInstallTime = this.f22385b.getPackageFirstInstallTime("com.huawei.hwid");
                if (this.f22394k != 3 && this.f22395l == packageFirstInstallTime) {
                    HMSLog.i("HMSPackageManager", "quit checkHmsIsSpoof cached state: " + d(this.f22394k));
                    return this.f22394k;
                }
                if (p()) {
                    i10 = 2;
                } else {
                    i10 = 1;
                }
                this.f22394k = i10;
                this.f22395l = this.f22385b.getPackageFirstInstallTime("com.huawei.hwid");
                HMSLog.i("HMSPackageManager", "quit checkHmsIsSpoof state: " + d(this.f22394k));
                return this.f22394k;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Pair<String, String> s(String str, String str2) {
        if (f22383s.containsKey(str) && PackageConstants.SERVICES_SIGNATURE_V3.equalsIgnoreCase(str2)) {
            this.f22397n = 3;
            return new Pair<>(str, str2);
        }
        return null;
    }

    private void t(String str) {
        String f10 = f(str);
        if (TextUtils.isEmpty(f10)) {
            return;
        }
        this.f22392i = f10.substring(9);
    }

    private void u() {
        synchronized (f22381q) {
            this.f22389f = null;
            this.f22390g = null;
            this.f22391h = null;
            this.f22392i = null;
            this.f22393j = 0;
        }
    }

    private void v(String str) {
        if (SystemUtils.isHuawei() || SystemUtils.isSystemApp(this.f22384a, str) || Build.VERSION.SDK_INT < 28 || m(str)) {
            AgHmsUpdateState.getInstance().setCheckedState(HmsCheckedState.NOT_NEED_UPDATE);
        }
    }

    private void w() {
        synchronized (f22381q) {
            this.f22386c = null;
            this.f22387d = null;
            this.f22388e = 0;
        }
    }

    private Pair<String, String> x() {
        try {
            List<ResolveInfo> queryIntentServices = this.f22384a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128);
            if (queryIntentServices != null && queryIntentServices.size() != 0) {
                h(queryIntentServices);
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    String str = resolveInfo.serviceInfo.applicationInfo.packageName;
                    String packageSigningCertificate = this.f22385b.getPackageSigningCertificate(str);
                    String packageSignature = this.f22385b.getPackageSignature(str);
                    Pair<String, String> s10 = s(str, packageSigningCertificate);
                    if (s10 != null) {
                        HMSLog.i("HMSPackageManager", "signature V3 check success");
                        return s10;
                    }
                    Pair<String, String> b10 = b(resolveInfo.serviceInfo.metaData, str, packageSigningCertificate, packageSignature);
                    if (b10 != null) {
                        HMSLog.i("HMSPackageManager", "DSS signature check success");
                        return b10;
                    }
                    Pair<String, String> c10 = c(str, packageSignature);
                    if (c10 != null) {
                        HMSLog.i("HMSPackageManager", "signature V2 check success");
                        return c10;
                    }
                }
                return null;
            }
            HMSLog.e("HMSPackageManager", "query hms action, resolveInfoList is null or empty.");
            return null;
        } catch (Exception e10) {
            HMSLog.e("HMSPackageManager", "getHmsPackageName query hms action failed. " + e10.getMessage());
            return null;
        }
    }

    private Pair<String, String> y() {
        Pair<String, String> x10 = x();
        if (x10 != null) {
            HMSLog.i("HMSPackageManager", "aidlService pkgName: " + ((String) x10.first));
            this.f22391h = "com.huawei.hms.core.aidlservice";
            this.f22392i = null;
            return x10;
        }
        ArrayList<PackagePriorityInfo> z10 = z();
        if (z10 == null) {
            HMSLog.e("HMSPackageManager", "PackagePriorityInfo list is null");
            return null;
        }
        Iterator<PackagePriorityInfo> it = z10.iterator();
        while (it.hasNext()) {
            PackagePriorityInfo next = it.next();
            String str = next.f22398a;
            String str2 = next.f22399b;
            String str3 = next.f22400c;
            String str4 = next.f22401d;
            String packageSignature = this.f22385b.getPackageSignature(str);
            if (j(str + ContainerUtils.FIELD_DELIMITER + packageSignature + ContainerUtils.FIELD_DELIMITER + str2, str3, str4)) {
                HMSLog.i("HMSPackageManager", "result: " + str + ", " + str2 + ", " + next.f22403f);
                this.f22391h = PackageConstants.GENERAL_SERVICES_ACTION;
                t(str2);
                return new Pair<>(str, packageSignature);
            }
        }
        return null;
    }

    private ArrayList<PackagePriorityInfo> z() {
        try {
            List<ResolveInfo> queryIntentServices = this.f22384a.getPackageManager().queryIntentServices(new Intent(PackageConstants.GENERAL_SERVICES_ACTION), 128);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ArrayList<PackagePriorityInfo> arrayList = new ArrayList<>();
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    String str = resolveInfo.serviceInfo.applicationInfo.packageName;
                    long packageFirstInstallTime = this.f22385b.getPackageFirstInstallTime(str);
                    Bundle bundle = resolveInfo.serviceInfo.metaData;
                    if (bundle == null) {
                        HMSLog.e("HMSPackageManager", "package " + str + " get metaData is null");
                    } else {
                        String e10 = e(bundle, "hms_app_checker_config");
                        String f10 = f(e10);
                        if (TextUtils.isEmpty(f10)) {
                            HMSLog.i("HMSPackageManager", "get priority fail. hmsCheckerCfg: " + e10);
                        } else {
                            String e11 = e(bundle, "hms_app_signer_v2");
                            if (TextUtils.isEmpty(e11)) {
                                HMSLog.i("HMSPackageManager", "get signerV2 fail.");
                            } else {
                                String e12 = e(bundle, "hms_app_cert_chain");
                                if (TextUtils.isEmpty(e12)) {
                                    HMSLog.i("HMSPackageManager", "get certChain fail.");
                                } else {
                                    HMSLog.i("HMSPackageManager", "add: " + str + ", " + e10 + ", " + packageFirstInstallTime);
                                    arrayList.add(new PackagePriorityInfo(str, e10, e11, e12, f10, packageFirstInstallTime));
                                }
                            }
                        }
                    }
                }
                Collections.sort(arrayList);
                return arrayList;
            }
            HMSLog.e("HMSPackageManager", "query aglite action, resolveInfoList is null or empty");
            return null;
        } catch (Exception e13) {
            HMSLog.e("HMSPackageManager", "query aglite action failed. " + e13.getMessage());
            return null;
        }
    }

    public String getHMSFingerprint() {
        String str = this.f22387d;
        if (str == null) {
            return "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05";
        }
        return str;
    }

    public String getHMSPackageName() {
        HMSLog.i("HMSPackageManager", "Enter getHMSPackageName");
        refresh();
        String str = this.f22386c;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f22385b.getPackageStates(str))) {
                HMSLog.i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                A();
            }
            String str2 = this.f22386c;
            if (str2 != null) {
                return str2;
            }
        }
        HMSLog.i("HMSPackageManager", "return default packageName: com.huawei.hwid");
        return "com.huawei.hwid";
    }

    public String getHMSPackageNameForMultiService() {
        HMSLog.i("HMSPackageManager", "Enter getHMSPackageNameForMultiService");
        refreshForMultiService();
        String str = this.f22389f;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f22385b.getPackageStates(str))) {
                HMSLog.i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                B();
            }
            String str2 = this.f22389f;
            if (str2 != null) {
                return str2;
            }
        }
        HMSLog.i("HMSPackageManager", "return default packageName: com.huawei.hwid");
        return "com.huawei.hwid";
    }

    public PackageManagerHelper.PackageStates getHMSPackageStates() {
        synchronized (f22380p) {
            try {
                refresh();
                PackageManagerHelper.PackageStates packageStates = this.f22385b.getPackageStates(this.f22386c);
                PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
                if (packageStates == packageStates2) {
                    w();
                    return packageStates2;
                } else if ("com.huawei.hwid".equals(this.f22386c) && r() == 1) {
                    return PackageManagerHelper.PackageStates.SPOOF;
                } else if (packageStates == PackageManagerHelper.PackageStates.ENABLED && !q(this.f22386c, this.f22387d)) {
                    return packageStates2;
                } else {
                    return packageStates;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public PackageManagerHelper.PackageStates getHMSPackageStatesForMultiService() {
        synchronized (f22380p) {
            try {
                refreshForMultiService();
                PackageManagerHelper.PackageStates packageStates = this.f22385b.getPackageStates(this.f22389f);
                PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
                if (packageStates == packageStates2) {
                    u();
                    return packageStates2;
                } else if ("com.huawei.hwid".equals(this.f22389f) && r() == 1) {
                    return PackageManagerHelper.PackageStates.SPOOF;
                } else if (packageStates == PackageManagerHelper.PackageStates.ENABLED && !q(this.f22389f, this.f22390g)) {
                    return packageStates2;
                } else {
                    return packageStates;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int getHmsMultiServiceVersion() {
        return this.f22385b.getPackageVersionCode(getHMSPackageNameForMultiService());
    }

    public int getHmsVersionCode() {
        return this.f22385b.getPackageVersionCode(getHMSPackageName());
    }

    public String getInnerServiceAction() {
        return PackageConstants.INTERNAL_SERVICES_ACTION;
    }

    public String getServiceAction() {
        if (!TextUtils.isEmpty(this.f22391h)) {
            return this.f22391h;
        }
        return "com.huawei.hms.core.aidlservice";
    }

    public boolean hmsVerHigherThan(int i10) {
        if (this.f22388e >= i10 || !C()) {
            return true;
        }
        int packageVersionCode = this.f22385b.getPackageVersionCode(getHMSPackageName());
        this.f22388e = packageVersionCode;
        if (packageVersionCode >= i10) {
            return true;
        }
        return false;
    }

    public boolean isApkNeedUpdate(int i10) {
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", target version requirements: " + i10);
        if (hmsVersionCode < i10) {
            return true;
        }
        return false;
    }

    public boolean isApkUpdateNecessary(int i10) {
        if (isUpdateHmsForThirdPartyDevice()) {
            return true;
        }
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", minimum version requirements: " + i10);
        if (C() && hmsVersionCode < i10) {
            return true;
        }
        return false;
    }

    public boolean isUpdateHmsForThirdPartyDevice() {
        if ("com.huawei.hwid".equals(this.f22389f) && AgHmsUpdateState.getInstance().isUpdateHms()) {
            return true;
        }
        return false;
    }

    public boolean isUseOldCertificate() {
        return this.f22396m;
    }

    public void refresh() {
        if (TextUtils.isEmpty(this.f22386c) || TextUtils.isEmpty(this.f22387d)) {
            A();
        }
        o(this.f22386c);
    }

    public void refreshForMultiService() {
        if (TextUtils.isEmpty(this.f22389f) || TextUtils.isEmpty(this.f22390g)) {
            B();
        }
        o(this.f22389f);
    }

    public void resetMultiServiceState() {
        u();
    }

    public void setUseOldCertificate(boolean z10) {
        this.f22396m = z10;
    }
}
