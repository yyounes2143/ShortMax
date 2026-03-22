package com.mbridge.msdk.dycreator.utils;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import java.lang.reflect.Method;
/* compiled from: DYLogicUtil.java */
/* loaded from: classes5.dex */
public class d {
    public static boolean a(View view, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        String[] split;
        if (view != null) {
            try {
                if (!(view instanceof InterBase) || aVar == null) {
                    return true;
                }
                String actionDes = ((InterBase) view).getActionDes();
                if (TextUtils.isEmpty(actionDes) || (split = actionDes.split("\\|")) == null || split.length < 2 || TextUtils.isEmpty(split[0]) || !split[0].startsWith("click") || TextUtils.isEmpty(split[1]) || !split[1].equals("alecfc") || aVar.getEffectData() == null) {
                    return true;
                }
                return aVar.getEffectData().isClickScreen();
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
        return true;
    }

    public static void a(String str, View view, boolean z10) {
        if (view == null || !(view instanceof InterBase) || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String[] split = str.split("\\|");
            if (split == null || split.length < 2 || TextUtils.isEmpty(split[0]) || !split[0].startsWith("visible") || TextUtils.isEmpty(split[1]) || !split[1].equals("parent") || !z10) {
                return;
            }
            view.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static Object a(Object obj, String str) {
        Method method;
        try {
            try {
                method = obj.getClass().getMethod(str, new Class[0]);
                if (method != null) {
                    try {
                        return method.invoke(obj, new Object[0]);
                    } catch (NoSuchMethodException unused) {
                        if (obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a) {
                            method = ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData().getClass().getMethod(str, new Class[0]);
                        }
                        if (method != null) {
                            return method.invoke(((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData(), new Object[0]);
                        }
                        return null;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (NoSuchMethodException unused2) {
            method = null;
        }
        return null;
    }

    public static String a(boolean z10, int i10, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        if (TextUtils.isEmpty(str2) || !str2.contains("zh")) {
            return str + " " + i10 + "s";
        } else if (z10) {
            return str + i10 + "s";
        } else {
            return i10 + "s " + str;
        }
    }
}
