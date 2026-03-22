package com.google.protobuf;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MessageLiteToString.java */
/* loaded from: classes5.dex */
public final class z {
    private static final String BUILDER_LIST_SUFFIX = "OrBuilderList";
    private static final String BYTES_SUFFIX = "Bytes";
    private static final char[] INDENT_BUFFER;
    private static final String LIST_SUFFIX = "List";
    private static final String MAP_SUFFIX = "Map";

    static {
        char[] cArr = new char[80];
        INDENT_BUFFER = cArr;
        Arrays.fill(cArr, ' ');
    }

    private z() {
    }

    private static void indent(int i10, StringBuilder sb2) {
        int i11;
        while (i10 > 0) {
            char[] cArr = INDENT_BUFFER;
            if (i10 > cArr.length) {
                i11 = cArr.length;
            } else {
                i11 = i10;
            }
            sb2.append(cArr, 0, i11);
            i10 -= i11;
        }
    }

    private static boolean isDefaultValue(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Float) {
            if (Float.floatToRawIntBits(((Float) obj).floatValue()) == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Double) {
            if (Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0) {
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
                if (obj == ((MessageLite) obj).getDefaultInstanceForType()) {
                    return true;
                }
                return false;
            } else if ((obj instanceof java.lang.Enum) && ((java.lang.Enum) obj).ordinal() == 0) {
                return true;
            } else {
                return false;
            }
        }
    }

    private static String pascalCaseToSnakeCase(String str) {
        if (str.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Character.toLowerCase(str.charAt(0)));
        for (int i10 = 1; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void printField(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                printField(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                printField(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            indent(i10, sb2);
            sb2.append(pascalCaseToSnakeCase(str));
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(p0.escapeText((String) obj));
                sb2.append('\"');
            } else if (obj instanceof ByteString) {
                sb2.append(": \"");
                sb2.append(p0.escapeBytes((ByteString) obj));
                sb2.append('\"');
            } else if (obj instanceof GeneratedMessageLite) {
                sb2.append(" {");
                reflectivePrintWithIndent((GeneratedMessageLite) obj, sb2, i10 + 2);
                sb2.append("\n");
                indent(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i11 = i10 + 2;
                printField(sb2, i11, "key", entry2.getKey());
                printField(sb2, i11, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb2.append("\n");
                indent(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x016f, code lost:
        if (r5.containsKey("get" + r9.substring(0, r9.length() - 5)) != false) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void reflectivePrintWithIndent(com.google.protobuf.MessageLite r16, java.lang.StringBuilder r17, int r18) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.z.reflectivePrintWithIndent(com.google.protobuf.MessageLite, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toString(MessageLite messageLite, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        reflectivePrintWithIndent(messageLite, sb2, 0);
        return sb2.toString();
    }
}
