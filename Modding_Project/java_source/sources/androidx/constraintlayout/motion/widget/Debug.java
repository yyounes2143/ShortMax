package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.MBridgeConstans;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;
@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup viewGroup, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            System.out.println(str2 + "     " + getName(childAt));
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Field[] fields = layoutParams.getClass().getFields();
            for (int i11 = 0; i11 < fields.length; i11++) {
                Field field = fields[i11];
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(str2 + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        System.out.println(str + "------------- " + cls.getName() + " --------------------");
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(str + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(str + "------------- " + cls.getSimpleName() + " --------------------");
    }

    public static String getActionType(MotionEvent motionEvent) {
        Field[] fields;
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int i10) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i10 + 2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    public static String getState(MotionLayout motionLayout, int i10) {
        return getState(motionLayout, i10, -1);
    }

    public static void logStack(String str, String str2, int i10) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i10, stackTrace.length - 1);
        String str3 = " ";
        for (int i11 = 1; i11 <= min; i11++) {
            StackTraceElement stackTraceElement = stackTrace[i11];
            str3 = str3 + " ";
            Log.v(str, str2 + str3 + (".(" + stackTrace[i11].getFileName() + ":" + stackTrace[i11].getLineNumber() + ") " + stackTrace[i11].getMethodName()) + str3);
        }
    }

    public static void printStack(String str, int i10) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i10, stackTrace.length - 1);
        String str2 = " ";
        for (int i11 = 1; i11 <= min; i11++) {
            StackTraceElement stackTraceElement = stackTrace[i11];
            str2 = str2 + " ";
            PrintStream printStream = System.out;
            printStream.println(str + str2 + (".(" + stackTrace[i11].getFileName() + ":" + stackTrace[i11].getLineNumber() + ") ") + str2);
        }
    }

    public static String getState(MotionLayout motionLayout, int i10, int i11) {
        int length;
        if (i10 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(i10);
        if (i11 != -1) {
            if (resourceEntryName.length() > i11) {
                resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
            }
            if (resourceEntryName.length() <= i11 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
                return resourceEntryName;
            }
            int length2 = (resourceEntryName.length() - i11) / length;
            return resourceEntryName.replaceAll(CharBuffer.allocate(length2).toString().replace((char) 0, '.') + "_", "_");
        }
        return resourceEntryName;
    }

    public static String getName(Context context, int i10) {
        if (i10 != -1) {
            try {
                return context.getResources().getResourceEntryName(i10);
            } catch (Exception unused) {
                return "?" + i10;
            }
        }
        return GrsBaseInfo.CountryCodeSource.UNKNOWN;
    }

    public static String getName(Context context, int[] iArr) {
        String str;
        try {
            String str2 = iArr.length + "[";
            int i10 = 0;
            while (i10 < iArr.length) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(i10 == 0 ? "" : " ");
                String sb3 = sb2.toString();
                try {
                    str = context.getResources().getResourceEntryName(iArr[i10]);
                } catch (Resources.NotFoundException unused) {
                    str = "? " + iArr[i10] + " ";
                }
                str2 = sb3 + str;
                i10++;
            }
            return str2 + "]";
        } catch (Exception e10) {
            Log.v("DEBUG", e10.toString());
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        System.out.println(" >>>>>>>>>>>>>>>>>>. dump " + str2 + "  " + layoutParams.getClass().getName());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(str2 + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }
}
