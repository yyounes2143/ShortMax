package com.huawei.hms.common.internal;

import android.app.Activity;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes5.dex */
public class ClientSettings {

    /* renamed from: a  reason: collision with root package name */
    private String f22039a;

    /* renamed from: b  reason: collision with root package name */
    private String f22040b;

    /* renamed from: c  reason: collision with root package name */
    private List<Scope> f22041c;

    /* renamed from: d  reason: collision with root package name */
    private String f22042d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f22043e;

    /* renamed from: f  reason: collision with root package name */
    private String f22044f;

    /* renamed from: g  reason: collision with root package name */
    private SubAppInfo f22045g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<Activity> f22046h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22047i;

    /* renamed from: j  reason: collision with root package name */
    private String f22048j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f22049k;

    public ClientSettings(String str, String str2, List<Scope> list, String str3, List<String> list2) {
        this.f22039a = str;
        this.f22040b = str2;
        this.f22041c = list;
        this.f22042d = str3;
        this.f22043e = list2;
    }

    public List<String> getApiName() {
        return this.f22043e;
    }

    public String getAppID() {
        return this.f22042d;
    }

    public String getClientClassName() {
        return this.f22040b;
    }

    public String getClientPackageName() {
        return this.f22039a;
    }

    public Activity getCpActivity() {
        WeakReference<Activity> weakReference = this.f22046h;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public String getCpID() {
        return this.f22044f;
    }

    public String getInnerHmsPkg() {
        return this.f22048j;
    }

    public List<Scope> getScopes() {
        return this.f22041c;
    }

    public SubAppInfo getSubAppID() {
        return this.f22045g;
    }

    public boolean isHasActivity() {
        return this.f22047i;
    }

    public boolean isUseInnerHms() {
        return this.f22049k;
    }

    public void setApiName(List<String> list) {
        this.f22043e = list;
    }

    public void setAppID(String str) {
        this.f22042d = str;
    }

    public void setClientClassName(String str) {
        this.f22040b = str;
    }

    public void setClientPackageName(String str) {
        this.f22039a = str;
    }

    public void setCpActivity(Activity activity) {
        this.f22046h = new WeakReference<>(activity);
        this.f22047i = true;
    }

    public void setCpID(String str) {
        this.f22044f = str;
    }

    public void setInnerHmsPkg(String str) {
        this.f22048j = str;
    }

    public void setScopes(List<Scope> list) {
        this.f22041c = list;
    }

    public void setSubAppId(SubAppInfo subAppInfo) {
        this.f22045g = subAppInfo;
    }

    public void setUseInnerHms(boolean z10) {
        this.f22049k = z10;
    }

    public ClientSettings(String str, String str2, List<Scope> list, String str3, List<String> list2, SubAppInfo subAppInfo) {
        this(str, str2, list, str3, list2);
        this.f22045g = subAppInfo;
    }
}
