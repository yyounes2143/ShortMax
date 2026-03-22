package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.mbsignalcommon.mapping.b;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WindVaneSignalCommunication.java */
/* loaded from: classes4.dex */
public class h implements b, Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    protected Pattern f28265a;

    /* renamed from: b  reason: collision with root package name */
    protected String f28266b;

    /* renamed from: d  reason: collision with root package name */
    protected Context f28268d;

    /* renamed from: e  reason: collision with root package name */
    protected WindVaneWebView f28269e;

    /* renamed from: c  reason: collision with root package name */
    protected final int f28267c = 1;

    /* renamed from: f  reason: collision with root package name */
    protected Handler f28270f = new Handler(Looper.getMainLooper(), this);

    public h(Context context) {
        this.f28268d = context;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public void a(WindVaneWebView windVaneWebView) {
        this.f28269e = windVaneWebView;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public boolean b(String str) {
        if (i.f(str)) {
            a(i.c(str));
            d(str);
            return true;
        }
        return false;
    }

    public a c(String str) {
        if (str == null) {
            return null;
        }
        a a10 = com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f28269e, str);
        if (a10 != null) {
            a10.f28239b = this.f28269e;
            return a10;
        }
        Matcher matcher = this.f28265a.matcher(str);
        if (matcher.matches()) {
            a aVar = new a();
            int groupCount = matcher.groupCount();
            if (groupCount >= 5) {
                aVar.f28243f = matcher.group(5);
            }
            if (groupCount >= 3) {
                aVar.f28241d = matcher.group(1);
                aVar.f28244g = matcher.group(2);
                String group = matcher.group(3);
                aVar.f28242e = group;
                HashMap<String, String> hashMap = com.mbridge.msdk.mbsignalcommon.base.e.f28140k;
                if (hashMap != null && hashMap.containsKey(group)) {
                    aVar.f28242e = com.mbridge.msdk.mbsignalcommon.base.e.f28140k.get(aVar.f28242e);
                }
                aVar.f28239b = this.f28269e;
                return aVar;
            }
        }
        return null;
    }

    public void d(String str) {
        this.f28266b = str;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        String str;
        a aVar = (a) message.obj;
        if (aVar == null) {
            return false;
        }
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (message.what != 1) {
            return false;
        }
        Object obj = aVar.f28240c;
        b.C0397b c0397b = aVar.f28238a;
        if (c0397b != null && obj != null) {
            if (TextUtils.isEmpty(aVar.f28243f)) {
                str = JsonUtils.EMPTY_JSON;
            } else {
                str = aVar.f28243f;
            }
            c0397b.a(obj, aVar, str);
        }
        return true;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public void a(String str) {
        a c10;
        if (TextUtils.isEmpty(str) || (c10 = c(str)) == null) {
            return;
        }
        a(c10);
    }

    protected void a(a aVar) {
        WindVaneWebView windVaneWebView = aVar.f28239b;
        Object jsObject = windVaneWebView == null ? null : windVaneWebView.getJsObject(aVar.f28241d);
        if (jsObject == null) {
            return;
        }
        try {
            b.C0397b a10 = com.mbridge.msdk.mbsignalcommon.mapping.b.a(this.f28268d.getClassLoader(), jsObject.getClass().getName()).a(aVar.f28242e, Object.class, String.class);
            a10.a();
            if (jsObject instanceof g) {
                aVar.f28238a = a10;
                aVar.f28240c = jsObject;
                a(1, aVar);
            }
        } catch (com.mbridge.msdk.mbsignalcommon.mapping.a e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    protected void a(int i10, a aVar) {
        Message obtain = Message.obtain();
        obtain.what = i10;
        obtain.obj = aVar;
        this.f28270f.sendMessage(obtain);
    }

    public void a(Pattern pattern) {
        this.f28265a = pattern;
    }
}
