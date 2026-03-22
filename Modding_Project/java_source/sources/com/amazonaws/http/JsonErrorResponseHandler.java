package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class JsonErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {

    /* renamed from: a  reason: collision with root package name */
    private final List<? extends JsonErrorUnmarshaller> f5006a;

    /* loaded from: classes2.dex */
    public static final class JsonErrorResponse {

        /* renamed from: a  reason: collision with root package name */
        private final int f5007a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5008b = b("message");

        /* renamed from: c  reason: collision with root package name */
        private final String f5009c;

        /* renamed from: d  reason: collision with root package name */
        private final Map<String, String> f5010d;

        private JsonErrorResponse(int i10, String str, Map<String, String> map) {
            this.f5007a = i10;
            this.f5009c = str;
            this.f5010d = map;
        }

        public static JsonErrorResponse a(HttpResponse httpResponse) throws IOException {
            int e10 = httpResponse.e();
            Map<String, String> e11 = JsonUtils.e(new BufferedReader(new InputStreamReader(httpResponse.b(), StringUtils.f6417a)));
            String str = httpResponse.c().get("x-amzn-ErrorType");
            if (str != null) {
                int indexOf = str.indexOf(58);
                if (indexOf != -1) {
                    str = str.substring(0, indexOf);
                }
            } else if (e11.containsKey("__type")) {
                String str2 = e11.get("__type");
                str = str2.substring(str2.lastIndexOf("#") + 1);
            }
            return new JsonErrorResponse(e10, str, e11);
        }

        public String b(String str) {
            if (str != null && str.length() != 0) {
                String str2 = StringUtils.b(str.substring(0, 1)) + str.substring(1);
                String str3 = StringUtils.c(str.substring(0, 1)) + str.substring(1);
                if (this.f5010d.containsKey(str3)) {
                    return this.f5010d.get(str3);
                }
                if (this.f5010d.containsKey(str2)) {
                    return this.f5010d.get(str2);
                }
                return "";
            }
            return null;
        }

        public String c() {
            return this.f5009c;
        }

        public String d() {
            return this.f5008b;
        }
    }

    public JsonErrorResponseHandler(List<? extends JsonErrorUnmarshaller> list) {
        this.f5006a = list;
    }

    private AmazonServiceException d(JsonErrorResponse jsonErrorResponse) throws Exception {
        for (JsonErrorUnmarshaller jsonErrorUnmarshaller : this.f5006a) {
            if (jsonErrorUnmarshaller.c(jsonErrorResponse)) {
                return jsonErrorUnmarshaller.a(jsonErrorResponse);
            }
        }
        return null;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: c */
    public AmazonServiceException b(HttpResponse httpResponse) throws Exception {
        try {
            JsonErrorResponse a10 = JsonErrorResponse.a(httpResponse);
            AmazonServiceException d10 = d(a10);
            if (d10 == null) {
                return null;
            }
            d10.q(httpResponse.e());
            if (httpResponse.e() < 500) {
                d10.j(AmazonServiceException.ErrorType.Client);
            } else {
                d10.j(AmazonServiceException.ErrorType.Service);
            }
            d10.h(a10.c());
            for (Map.Entry<String, String> entry : httpResponse.c().entrySet()) {
                if ("X-Amzn-RequestId".equalsIgnoreCase(entry.getKey())) {
                    d10.k(entry.getValue());
                }
            }
            return d10;
        } catch (IOException e10) {
            throw new AmazonClientException("Unable to parse error response", e10);
        }
    }
}
