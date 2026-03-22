package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MessageLiteToString.java */
/* loaded from: classes3.dex */
public final class a1 {
    private static final String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    private static boolean b(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Float) {
            if (((Float) obj).floatValue() == 0.0f) {
                return true;
            }
            return false;
        } else if (obj instanceof Double) {
            if (((Double) obj).doubleValue() == 0.0d) {
                return true;
            }
            return false;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof ByteString) {
                return obj.equals(ByteString.EMPTY);
            }
            if (obj instanceof MessageLite) {
                if (obj == ((MessageLite) obj).mo4630getDefaultInstanceForType()) {
                    return true;
                }
                return false;
            } else if ((obj instanceof Enum) && ((Enum) obj).ordinal() == 0) {
                return true;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void c(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                c(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                c(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                sb2.append(' ');
            }
            sb2.append(str);
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(a2.e((String) obj));
                sb2.append('\"');
            } else if (obj instanceof ByteString) {
                sb2.append(": \"");
                sb2.append(a2.a((ByteString) obj));
                sb2.append('\"');
            } else if (obj instanceof GeneratedMessageLite) {
                sb2.append(" {");
                d((GeneratedMessageLite) obj, sb2, i10 + 2);
                sb2.append("\n");
                while (i11 < i10) {
                    sb2.append(' ');
                    i11++;
                }
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i13 = i10 + 2;
                c(sb2, i13, "key", entry2.getKey());
                c(sb2, i13, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb2.append("\n");
                while (i11 < i10) {
                    sb2.append(' ');
                    i11++;
                }
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj.toString());
            }
        }
    }

    private static void d(MessageLite messageLite, StringBuilder sb2, int i10) {
        Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.c, Object> next;
        String str;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : messageLite.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str2 : treeSet) {
            if (str2.startsWith("get")) {
                str = str2.substring(3);
            } else {
                str = str2;
            }
            boolean z10 = true;
            if (str.endsWith("List") && !str.endsWith("OrBuilderList") && !str.equals("List")) {
                String str3 = str.substring(0, 1).toLowerCase() + str.substring(1, str.length() - 4);
                Method method2 = (Method) hashMap.get(str2);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    c(sb2, i10, a(str3), GeneratedMessageLite.invokeOrDie(method2, messageLite, new Object[0]));
                }
            }
            if (str.endsWith("Map") && !str.equals("Map")) {
                String str4 = str.substring(0, 1).toLowerCase() + str.substring(1, str.length() - 3);
                Method method3 = (Method) hashMap.get(str2);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    c(sb2, i10, a(str4), GeneratedMessageLite.invokeOrDie(method3, messageLite, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set" + str)) != null) {
                if (str.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + str.substring(0, str.length() - 5))) {
                    }
                }
                String str5 = str.substring(0, 1).toLowerCase() + str.substring(1);
                Method method4 = (Method) hashMap.get("get" + str);
                Method method5 = (Method) hashMap.get("has" + str);
                if (method4 != null) {
                    Object invokeOrDie = GeneratedMessageLite.invokeOrDie(method4, messageLite, new Object[0]);
                    if (method5 == null) {
                        if (b(invokeOrDie)) {
                            z10 = false;
                        }
                    } else {
                        z10 = ((Boolean) GeneratedMessageLite.invokeOrDie(method5, messageLite, new Object[0])).booleanValue();
                    }
                    if (z10) {
                        c(sb2, i10, a(str5), invokeOrDie);
                    }
                }
            }
        }
        if (messageLite instanceof GeneratedMessageLite.b) {
            Iterator<Map.Entry<GeneratedMessageLite.c, Object>> G = ((GeneratedMessageLite.b) messageLite).f14080d.G();
            while (G.hasNext()) {
                c(sb2, i10, "[" + next.getKey().getNumber() + "]", G.next().getValue());
            }
        }
        k2 k2Var = ((GeneratedMessageLite) messageLite).f14072a;
        if (k2Var != null) {
            k2Var.l(sb2, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(MessageLite messageLite, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(messageLite, sb2, 0);
        return sb2.toString();
    }
}
