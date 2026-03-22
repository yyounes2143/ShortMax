package com.apm.insight.b;

import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.reflect.Field;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LooperUtil.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static MessageQueue f6829a;

    /* renamed from: b  reason: collision with root package name */
    private static Field f6830b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f6831c;

    public static MessageQueue a() {
        if (f6829a == null && Looper.getMainLooper() != null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == Looper.myLooper()) {
                f6829a = Looper.myQueue();
            } else {
                f6829a = mainLooper.getQueue();
            }
        }
        return f6829a;
    }

    public static Message a(MessageQueue messageQueue) {
        Field field = f6830b;
        if (field == null) {
            try {
                Field declaredField = Class.forName("android.os.MessageQueue").getDeclaredField("mMessages");
                f6830b = declaredField;
                declaredField.setAccessible(true);
                return (Message) f6830b.get(messageQueue);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return (Message) field.get(messageQueue);
        } catch (Exception unused2) {
            return null;
        }
    }

    private static Message a(Message message) {
        Field field = f6831c;
        if (field == null) {
            try {
                Field declaredField = Class.forName("android.os.Message").getDeclaredField("next");
                f6831c = declaredField;
                declaredField.setAccessible(true);
                return (Message) f6831c.get(message);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return (Message) field.get(message);
        } catch (Exception unused2) {
            return null;
        }
    }

    private static JSONObject a(Message message, long j10) {
        JSONObject jSONObject = new JSONObject();
        if (message == null) {
            return jSONObject;
        }
        try {
            jSONObject.put("when", message.getWhen() - j10);
            if (message.getCallback() != null) {
                jSONObject.put(TextureRenderKeys.KEY_IS_CALLBACK, String.valueOf(message.getCallback()));
            }
            jSONObject.put("what", message.what);
            if (message.getTarget() != null) {
                jSONObject.put(TypedValues.AttributesType.S_TARGET, String.valueOf(message.getTarget()));
            } else {
                jSONObject.put("barrier", message.arg1);
            }
            jSONObject.put("arg1", message.arg1);
            jSONObject.put("arg2", message.arg2);
            Object obj = message.obj;
            if (obj != null) {
                jSONObject.put("obj", obj);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONArray a(long j10) {
        MessageQueue a10 = a();
        JSONArray jSONArray = new JSONArray();
        if (a10 == null) {
            return jSONArray;
        }
        try {
            synchronized (a10) {
                Message a11 = a(a10);
                if (a11 == null) {
                    return jSONArray;
                }
                int i10 = 0;
                int i11 = 0;
                while (a11 != null && i10 < 100) {
                    i10++;
                    i11++;
                    JSONObject a12 = a(a11, j10);
                    try {
                        a12.put("id", i11);
                    } catch (JSONException unused) {
                    }
                    jSONArray.put(a12);
                    a11 = a(a11);
                }
                return jSONArray;
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            return jSONArray;
        }
    }
}
