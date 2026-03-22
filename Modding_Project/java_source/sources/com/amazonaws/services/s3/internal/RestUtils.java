package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.util.StringUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class RestUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f5934a = Arrays.asList("acl", "torrent", "logging", "location", "policy", "requestPayment", "versioning", "versions", "versionId", "notification", "uploadId", "uploads", "partNumber", "website", "delete", "lifecycle", "tagging", "cors", "restore", "replication", "accelerate", "inventory", "analytics", "metrics", "response-cache-control", "response-content-disposition", "response-content-encoding", "response-content-language", "response-content-type", "response-expires");

    public static <T> String a(String str, String str2, Request<T> request, String str3, Collection<String> collection) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str + "\n");
        Map<String, String> a10 = request.a();
        TreeMap treeMap = new TreeMap();
        if (a10 != null && a10.size() > 0) {
            for (Map.Entry<String, String> entry : a10.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null) {
                    String b10 = StringUtils.b(key);
                    if ("content-type".equals(b10) || "content-md5".equals(b10) || "date".equals(b10) || b10.startsWith("x-amz-")) {
                        treeMap.put(b10, value);
                    }
                }
            }
        }
        if (treeMap.containsKey("x-amz-date")) {
            treeMap.put("date", "");
        }
        if (str3 != null) {
            treeMap.put("date", str3);
        }
        if (!treeMap.containsKey("content-type")) {
            treeMap.put("content-type", "");
        }
        if (!treeMap.containsKey("content-md5")) {
            treeMap.put("content-md5", "");
        }
        for (Map.Entry<String, String> entry2 : request.getParameters().entrySet()) {
            if (entry2.getKey().startsWith("x-amz-")) {
                treeMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        for (Map.Entry entry3 : treeMap.entrySet()) {
            String str4 = (String) entry3.getKey();
            String str5 = (String) entry3.getValue();
            if (str4.startsWith("x-amz-")) {
                sb2.append(str4);
                sb2.append(':');
                if (str5 != null) {
                    sb2.append(str5);
                }
            } else if (str5 != null) {
                sb2.append(str5);
            }
            sb2.append("\n");
        }
        sb2.append(str2);
        String[] strArr = (String[]) request.getParameters().keySet().toArray(new String[request.getParameters().size()]);
        Arrays.sort(strArr);
        char c10 = '?';
        for (String str6 : strArr) {
            if (f5934a.contains(str6) || (collection != null && collection.contains(str6))) {
                if (sb2.length() == 0) {
                    sb2.append(c10);
                }
                sb2.append(str6);
                String str7 = request.getParameters().get(str6);
                if (str7 != null) {
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(str7);
                }
                c10 = '&';
            }
        }
        return sb2.toString();
    }
}
