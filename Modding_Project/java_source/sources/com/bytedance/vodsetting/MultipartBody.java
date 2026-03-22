package com.bytedance.vodsetting;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3.dex */
public class MultipartBody {
    static final String BOUNDARY = UUID.randomUUID().toString();
    private static final String ENCODING = "utf-8";
    private static final String END = "\r\n";
    private static final String QUOTATION_MARK = "\"";
    private static final String TWO_HYPHENS = "--";

    static void writeParamsEnd(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeBytes(TWO_HYPHENS + BOUNDARY + TWO_HYPHENS + END);
        dataOutputStream.writeBytes(END);
    }

    static void writeStringFormParams(DataOutputStream dataOutputStream, Map<String, Object> map) throws IOException {
        for (String str : map.keySet()) {
            String valueOf = String.valueOf(map.get(str));
            dataOutputStream.writeBytes(TWO_HYPHENS + BOUNDARY + END);
            dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + QUOTATION_MARK + END);
            dataOutputStream.writeBytes("Content-Type: text/plain; charset=utf-8\r\n");
            dataOutputStream.writeBytes(END);
            dataOutputStream.writeBytes(valueOf + END);
        }
        dataOutputStream.flush();
    }
}
