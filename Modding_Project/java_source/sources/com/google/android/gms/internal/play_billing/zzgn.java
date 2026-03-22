package com.google.android.gms.internal.play_billing;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzgn {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzgl zzglVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zzd(zzglVar, sb2, 0);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zzb(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzb(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            zzc(i10, sb2);
            if (!str.isEmpty()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Character.toLowerCase(str.charAt(0)));
                for (int i11 = 1; i11 < str.length(); i11++) {
                    char charAt = str.charAt(i11);
                    if (Character.isUpperCase(charAt)) {
                        sb3.append("_");
                    }
                    sb3.append(Character.toLowerCase(charAt));
                }
                str = sb3.toString();
            }
            sb2.append(str);
            if (obj instanceof String) {
                sb2.append(": \"");
                zzei zzeiVar = zzei.zzb;
                sb2.append(zzhf.zza(new zzeg(((String) obj).getBytes(zzfo.zza))));
                sb2.append('\"');
            } else if (obj instanceof zzei) {
                sb2.append(": \"");
                sb2.append(zzhf.zza((zzei) obj));
                sb2.append('\"');
            } else if (obj instanceof zzfi) {
                sb2.append(" {");
                zzd((zzfi) obj, sb2, i10 + 2);
                sb2.append("\n");
                zzc(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                int i12 = i10 + 2;
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                zzb(sb2, i12, "key", entry2.getKey());
                zzb(sb2, i12, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb2.append("\n");
                zzc(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    private static void zzc(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb2.append(zza, 0, i11);
            i10 -= i11;
        }
    }

    private static void zzd(zzgl zzglVar, StringBuilder sb2, int i10) {
        int i11;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzglVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i11 = 3;
            if (i12 >= length) {
                break;
            }
            Method method3 = declaredMethods[i12];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i12++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i11);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb2, i10, substring.substring(0, substring.length() - 4), zzfi.zzs(method2, zzglVar, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb2, i10, substring.substring(0, substring.length() - 3), zzfi.zzs(method, zzglVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object zzs = zzfi.zzs(method4, zzglVar, new Object[0]);
                    if (method5 == null) {
                        if (zzs instanceof Boolean) {
                            if (!((Boolean) zzs).booleanValue()) {
                            }
                            zzb(sb2, i10, substring, zzs);
                        } else if (zzs instanceof Integer) {
                            if (((Integer) zzs).intValue() == 0) {
                            }
                            zzb(sb2, i10, substring, zzs);
                        } else if (zzs instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzs).floatValue()) == 0) {
                            }
                            zzb(sb2, i10, substring, zzs);
                        } else if (zzs instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzs).doubleValue()) == 0) {
                            }
                            zzb(sb2, i10, substring, zzs);
                        } else {
                            if (zzs instanceof String) {
                                equals = zzs.equals("");
                            } else if (zzs instanceof zzei) {
                                equals = zzs.equals(zzei.zzb);
                            } else if (zzs instanceof zzgl) {
                                if (zzs == ((zzgl) zzs).zzh()) {
                                }
                                zzb(sb2, i10, substring, zzs);
                            } else {
                                if ((zzs instanceof Enum) && ((Enum) zzs).ordinal() == 0) {
                                }
                                zzb(sb2, i10, substring, zzs);
                            }
                            if (equals) {
                            }
                            zzb(sb2, i10, substring, zzs);
                        }
                    } else {
                        if (!((Boolean) zzfi.zzs(method5, zzglVar, new Object[0])).booleanValue()) {
                        }
                        zzb(sb2, i10, substring, zzs);
                    }
                }
            }
            i11 = 3;
        }
        if (zzglVar instanceof zzff) {
            Iterator zzf = ((zzff) zzglVar).zzb.zzf();
            if (zzf.hasNext()) {
                zzfg zzfgVar = (zzfg) ((Map.Entry) zzf.next()).getKey();
                throw null;
            }
        }
        zzhi zzhiVar = ((zzfi) zzglVar).zzc;
        if (zzhiVar != null) {
            zzhiVar.zzi(sb2, i10);
        }
    }
}
