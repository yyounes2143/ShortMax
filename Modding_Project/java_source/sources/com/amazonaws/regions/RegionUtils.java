package com.amazonaws.regions;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
/* loaded from: classes2.dex */
public class RegionUtils {

    /* renamed from: a  reason: collision with root package name */
    private static List<Region> f5777a;

    /* renamed from: b  reason: collision with root package name */
    private static final Log f5778b = LogFactory.c("com.amazonaws.request");

    public static Region a(String str) {
        for (Region region : c()) {
            if (region.d().equals(str)) {
                return region;
            }
        }
        return null;
    }

    public static Region b(String str) {
        String host = d(str).getHost();
        for (Region region : c()) {
            for (String str2 : region.h().values()) {
                if (d(str2).getHost().equals(host)) {
                    return region;
                }
            }
        }
        throw new IllegalArgumentException("No region found with any service for endpoint " + str);
    }

    public static synchronized List<Region> c() {
        List<Region> list;
        synchronized (RegionUtils.class) {
            try {
                if (f5777a == null) {
                    e();
                }
                list = f5777a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    private static URI d(String str) {
        try {
            URI uri = new URI(str);
            if (uri.getHost() == null) {
                return new URI("http://" + str);
            }
            return uri;
        } catch (URISyntaxException e10) {
            throw new RuntimeException("Unable to parse service endpoint: " + e10.getMessage());
        }
    }

    public static synchronized void e() {
        synchronized (RegionUtils.class) {
            if (System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride") != null) {
                try {
                    h();
                } catch (FileNotFoundException e10) {
                    throw new RuntimeException("Couldn't find regions override file specified", e10);
                }
            }
            if (f5777a == null) {
                g();
            }
            if (f5777a == null) {
                throw new RuntimeException("Failed to initialize the regions.");
            }
        }
    }

    private static void f(InputStream inputStream) {
        try {
            f5777a = new RegionMetadataParser().e(inputStream);
        } catch (Exception e10) {
            f5778b.f("Failed to parse regional endpoints", e10);
        }
    }

    private static void g() {
        Log log = f5778b;
        if (log.i()) {
            log.h("Initializing the regions with default regions");
        }
        f5777a = RegionDefaults.a();
    }

    private static void h() throws FileNotFoundException {
        String property = System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride");
        Log log = f5778b;
        if (log.i()) {
            log.h("Using local override of the regions file (" + property + ") to initiate regions data...");
        }
        f(new FileInputStream(new File(property)));
    }
}
