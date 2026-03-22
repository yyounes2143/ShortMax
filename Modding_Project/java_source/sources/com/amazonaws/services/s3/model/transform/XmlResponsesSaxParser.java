package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.DeleteObjectsResult$DeletedObject;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.Owner;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.model.S3VersionSummary;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilterPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.s3.model.inventory.InventoryDestination;
import com.amazonaws.services.s3.model.inventory.InventoryFilter;
import com.amazonaws.services.s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.s3.model.inventory.InventorySchedule;
import com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.s3.model.metrics.MetricsFilter;
import com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsTagPredicate;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.StringUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.ss.ttvideoengine.model.SubInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;
/* loaded from: classes2.dex */
public class XmlResponsesSaxParser {

    /* renamed from: c  reason: collision with root package name */
    private static final Log f6252c = LogFactory.b(XmlResponsesSaxParser.class);

    /* renamed from: a  reason: collision with root package name */
    private XMLReader f6253a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6254b = true;

    /* loaded from: classes2.dex */
    public static class AccessControlListHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final AccessControlList f6255c = new AccessControlList();

        /* renamed from: d  reason: collision with root package name */
        private Grantee f6256d = null;

        /* renamed from: e  reason: collision with root package name */
        private Permission f6257e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("AccessControlPolicy", "Owner")) {
                if (str2.equals("ID")) {
                    this.f6255c.g().f(g());
                } else if (str2.equals("DisplayName")) {
                    this.f6255c.g().e(g());
                }
            } else if (l("AccessControlPolicy", "AccessControlList")) {
                if (str2.equals("Grant")) {
                    this.f6255c.h(this.f6256d, this.f6257e);
                    this.f6256d = null;
                    this.f6257e = null;
                }
            } else if (l("AccessControlPolicy", "AccessControlList", "Grant")) {
                if (str2.equals("Permission")) {
                    this.f6257e = Permission.parsePermission(g());
                }
            } else if (l("AccessControlPolicy", "AccessControlList", "Grant", "Grantee")) {
                if (str2.equals("ID")) {
                    this.f6256d.setIdentifier(g());
                } else if (str2.equals("EmailAddress")) {
                    this.f6256d.setIdentifier(g());
                } else if (str2.equals("URI")) {
                    this.f6256d = GroupGrantee.parseGroupGrantee(g());
                } else if (str2.equals("DisplayName")) {
                    ((CanonicalGrantee) this.f6256d).b(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("AccessControlPolicy")) {
                if (str2.equals("Owner")) {
                    this.f6255c.i(new Owner());
                }
            } else if (l("AccessControlPolicy", "AccessControlList", "Grant") && str2.equals("Grantee")) {
                String h10 = XmlResponsesSaxParser.h("xsi:type", attributes);
                if ("AmazonCustomerByEmail".equals(h10)) {
                    this.f6256d = new EmailAddressGrantee(null);
                } else if ("CanonicalUser".equals(h10)) {
                    this.f6256d = new CanonicalGrantee(null);
                } else {
                    "Group".equals(h10);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketCrossOriginConfigurationHandler extends AbstractHandler {

        /* renamed from: d  reason: collision with root package name */
        private CORSRule f6260d;

        /* renamed from: c  reason: collision with root package name */
        private final BucketCrossOriginConfiguration f6259c = new BucketCrossOriginConfiguration(new ArrayList());

        /* renamed from: e  reason: collision with root package name */
        private List<CORSRule.AllowedMethods> f6261e = null;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f6262f = null;

        /* renamed from: g  reason: collision with root package name */
        private List<String> f6263g = null;

        /* renamed from: h  reason: collision with root package name */
        private List<String> f6264h = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f6260d.a(this.f6264h);
                    this.f6260d.b(this.f6261e);
                    this.f6260d.c(this.f6262f);
                    this.f6260d.d(this.f6263g);
                    this.f6264h = null;
                    this.f6261e = null;
                    this.f6262f = null;
                    this.f6263g = null;
                    this.f6259c.b().add(this.f6260d);
                    this.f6260d = null;
                }
            } else if (l("CORSConfiguration", "CORSRule")) {
                if (str2.equals("ID")) {
                    this.f6260d.e(g());
                } else if (str2.equals("AllowedOrigin")) {
                    this.f6262f.add(g());
                } else if (str2.equals("AllowedMethod")) {
                    this.f6261e.add(CORSRule.AllowedMethods.fromValue(g()));
                } else if (str2.equals("MaxAgeSeconds")) {
                    this.f6260d.f(Integer.parseInt(g()));
                } else if (str2.equals("ExposeHeader")) {
                    this.f6263g.add(g());
                } else if (str2.equals("AllowedHeader")) {
                    this.f6264h.add(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f6260d = new CORSRule();
                }
            } else if (l("CORSConfiguration", "CORSRule")) {
                if (str2.equals("AllowedOrigin")) {
                    if (this.f6262f == null) {
                        this.f6262f = new ArrayList();
                    }
                } else if (str2.equals("AllowedMethod")) {
                    if (this.f6261e == null) {
                        this.f6261e = new ArrayList();
                    }
                } else if (str2.equals("ExposeHeader")) {
                    if (this.f6263g == null) {
                        this.f6263g = new ArrayList();
                    }
                } else if (str2.equals("AllowedHeader") && this.f6264h == null) {
                    this.f6264h = new LinkedList();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketLifecycleConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketLifecycleConfiguration f6265c = new BucketLifecycleConfiguration(new ArrayList());

        /* renamed from: d  reason: collision with root package name */
        private BucketLifecycleConfiguration.Rule f6266d;

        /* renamed from: e  reason: collision with root package name */
        private BucketLifecycleConfiguration.Transition f6267e;

        /* renamed from: f  reason: collision with root package name */
        private BucketLifecycleConfiguration.NoncurrentVersionTransition f6268f;

        /* renamed from: g  reason: collision with root package name */
        private AbortIncompleteMultipartUpload f6269g;

        /* renamed from: h  reason: collision with root package name */
        private LifecycleFilter f6270h;

        /* renamed from: i  reason: collision with root package name */
        private List<LifecycleFilterPredicate> f6271i;

        /* renamed from: j  reason: collision with root package name */
        private String f6272j;

        /* renamed from: k  reason: collision with root package name */
        private String f6273k;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f6265c.b().add(this.f6266d);
                    this.f6266d = null;
                }
            } else if (l("LifecycleConfiguration", "Rule")) {
                if (str2.equals("ID")) {
                    this.f6266d.j(g());
                } else if (str2.equals("Prefix")) {
                    this.f6266d.n(g());
                } else if (str2.equals("Status")) {
                    this.f6266d.q(g());
                } else if (str2.equals("Transition")) {
                    this.f6266d.d(this.f6267e);
                    this.f6267e = null;
                } else if (str2.equals("NoncurrentVersionTransition")) {
                    this.f6266d.b(this.f6268f);
                    this.f6268f = null;
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.f6266d.e(this.f6269g);
                    this.f6269g = null;
                } else if (str2.equals("Filter")) {
                    this.f6266d.i(this.f6270h);
                    this.f6270h = null;
                }
            } else if (l("LifecycleConfiguration", "Rule", "Expiration")) {
                if (str2.equals("Date")) {
                    this.f6266d.f(ServiceUtils.c(g()));
                } else if (str2.equals("Days")) {
                    this.f6266d.g(Integer.parseInt(g()));
                } else if (str2.equals("ExpiredObjectDeleteMarker") && "true".equals(g())) {
                    this.f6266d.h(true);
                }
            } else if (l("LifecycleConfiguration", "Rule", "Transition")) {
                if (str2.equals("StorageClass")) {
                    this.f6267e.e(g());
                } else if (str2.equals("Date")) {
                    this.f6267e.b(ServiceUtils.c(g()));
                } else if (str2.equals("Days")) {
                    this.f6267e.d(Integer.parseInt(g()));
                }
            } else if (l("LifecycleConfiguration", "Rule", "NoncurrentVersionExpiration")) {
                if (str2.equals("NoncurrentDays")) {
                    this.f6266d.k(Integer.parseInt(g()));
                }
            } else if (l("LifecycleConfiguration", "Rule", "NoncurrentVersionTransition")) {
                if (str2.equals("StorageClass")) {
                    this.f6268f.d(g());
                } else if (str2.equals("NoncurrentDays")) {
                    this.f6268f.b(Integer.parseInt(g()));
                }
            } else if (l("LifecycleConfiguration", "Rule", "AbortIncompleteMultipartUpload")) {
                if (str2.equals("DaysAfterInitiation")) {
                    this.f6269g.d(Integer.parseInt(g()));
                }
            } else if (l("LifecycleConfiguration", "Rule", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6270h.b(new LifecyclePrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6270h.b(new LifecycleTagPredicate(new Tag(this.f6272j, this.f6273k)));
                    this.f6272j = null;
                    this.f6273k = null;
                } else if (str2.equals("And")) {
                    this.f6270h.b(new LifecycleAndOperator(this.f6271i));
                    this.f6271i = null;
                }
            } else if (l("LifecycleConfiguration", "Rule", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6272j = g();
                } else if (str2.equals("Value")) {
                    this.f6273k = g();
                }
            } else if (l("LifecycleConfiguration", "Rule", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f6271i.add(new LifecyclePrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6271i.add(new LifecycleTagPredicate(new Tag(this.f6272j, this.f6273k)));
                    this.f6272j = null;
                    this.f6273k = null;
                }
            } else if (l("LifecycleConfiguration", "Rule", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6272j = g();
                } else if (str2.equals("Value")) {
                    this.f6273k = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f6266d = new BucketLifecycleConfiguration.Rule();
                }
            } else if (l("LifecycleConfiguration", "Rule")) {
                if (str2.equals("Transition")) {
                    this.f6267e = new BucketLifecycleConfiguration.Transition();
                } else if (str2.equals("NoncurrentVersionTransition")) {
                    this.f6268f = new BucketLifecycleConfiguration.NoncurrentVersionTransition();
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.f6269g = new AbortIncompleteMultipartUpload();
                } else if (str2.equals("Filter")) {
                    this.f6270h = new LifecycleFilter();
                }
            } else if (l("LifecycleConfiguration", "Rule", "Filter") && str2.equals("And")) {
                this.f6271i = new ArrayList();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketReplicationConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketReplicationConfiguration f6276c = new BucketReplicationConfiguration();

        /* renamed from: d  reason: collision with root package name */
        private String f6277d;

        /* renamed from: e  reason: collision with root package name */
        private ReplicationRule f6278e;

        /* renamed from: f  reason: collision with root package name */
        private ReplicationDestinationConfig f6279f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ReplicationConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f6276c.b(this.f6277d, this.f6278e);
                    this.f6278e = null;
                    this.f6277d = null;
                    this.f6279f = null;
                } else if (str2.equals("Role")) {
                    this.f6276c.d(g());
                }
            } else if (l("ReplicationConfiguration", "Rule")) {
                if (str2.equals("ID")) {
                    this.f6277d = g();
                } else if (str2.equals("Prefix")) {
                    this.f6278e.b(g());
                } else if (str2.equals("Status")) {
                    this.f6278e.c(g());
                } else if (str2.equals("Destination")) {
                    this.f6278e.a(this.f6279f);
                }
            } else if (l("ReplicationConfiguration", "Rule", "Destination")) {
                if (str2.equals("Bucket")) {
                    this.f6279f.a(g());
                } else if (str2.equals("StorageClass")) {
                    this.f6279f.b(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ReplicationConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f6278e = new ReplicationRule();
                }
            } else if (l("ReplicationConfiguration", "Rule") && str2.equals("Destination")) {
                this.f6279f = new ReplicationDestinationConfig();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketTaggingConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketTaggingConfiguration f6280c = new BucketTaggingConfiguration();

        /* renamed from: d  reason: collision with root package name */
        private Map<String, String> f6281d;

        /* renamed from: e  reason: collision with root package name */
        private String f6282e;

        /* renamed from: f  reason: collision with root package name */
        private String f6283f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            String str4;
            if (l("Tagging")) {
                if (str2.equals("TagSet")) {
                    this.f6280c.b().add(new TagSet(this.f6281d));
                    this.f6281d = null;
                }
            } else if (l("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    String str5 = this.f6282e;
                    if (str5 != null && (str4 = this.f6283f) != null) {
                        this.f6281d.put(str5, str4);
                    }
                    this.f6282e = null;
                    this.f6283f = null;
                }
            } else if (l("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6282e = g();
                } else if (str2.equals("Value")) {
                    this.f6283f = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("Tagging") && str2.equals("TagSet")) {
                this.f6281d = new HashMap();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketWebsiteConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketWebsiteConfiguration f6285c = new BucketWebsiteConfiguration(null);

        /* renamed from: d  reason: collision with root package name */
        private RoutingRuleCondition f6286d = null;

        /* renamed from: e  reason: collision with root package name */
        private RedirectRule f6287e = null;

        /* renamed from: f  reason: collision with root package name */
        private RoutingRule f6288f = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f6285c.f(this.f6287e);
                    this.f6287e = null;
                }
            } else if (l("WebsiteConfiguration", "IndexDocument")) {
                if (str2.equals("Suffix")) {
                    this.f6285c.e(g());
                }
            } else if (l("WebsiteConfiguration", "ErrorDocument")) {
                if (str2.equals("Key")) {
                    this.f6285c.d(g());
                }
            } else if (l("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f6285c.b().add(this.f6288f);
                    this.f6288f = null;
                }
            } else if (l("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f6288f.a(this.f6286d);
                    this.f6286d = null;
                } else if (str2.equals("Redirect")) {
                    this.f6288f.b(this.f6287e);
                    this.f6287e = null;
                }
            } else if (l("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Condition")) {
                if (str2.equals("KeyPrefixEquals")) {
                    this.f6286d.b(g());
                } else if (str2.equals("HttpErrorCodeReturnedEquals")) {
                    this.f6286d.a(g());
                }
            } else if (l("WebsiteConfiguration", "RedirectAllRequestsTo") || l("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Redirect")) {
                if (str2.equals("Protocol")) {
                    this.f6287e.c(g());
                } else if (str2.equals("HostName")) {
                    this.f6287e.a(g());
                } else if (str2.equals("ReplaceKeyPrefixWith")) {
                    this.f6287e.d(g());
                } else if (str2.equals("ReplaceKeyWith")) {
                    this.f6287e.e(g());
                } else if (str2.equals("HttpRedirectCode")) {
                    this.f6287e.b(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f6287e = new RedirectRule();
                }
            } else if (l("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f6288f = new RoutingRule();
                }
            } else if (l("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f6286d = new RoutingRuleCondition();
                } else if (str2.equals("Redirect")) {
                    this.f6287e = new RedirectRule();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class CompleteMultipartUploadHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3VersionResult, S3RequesterChargedResult {

        /* renamed from: c  reason: collision with root package name */
        private CompleteMultipartUploadResult f6289c;

        /* renamed from: d  reason: collision with root package name */
        private AmazonS3Exception f6290d;

        /* renamed from: e  reason: collision with root package name */
        private String f6291e;

        /* renamed from: f  reason: collision with root package name */
        private String f6292f;

        /* renamed from: g  reason: collision with root package name */
        private String f6293g;

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void b(boolean z10) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f6289c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.b(z10);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            AmazonS3Exception amazonS3Exception;
            if (a()) {
                if (str2.equals("Error") && (amazonS3Exception = this.f6290d) != null) {
                    amazonS3Exception.h(this.f6293g);
                    this.f6290d.k(this.f6292f);
                    this.f6290d.v(this.f6291e);
                }
            } else if (l("CompleteMultipartUploadResult")) {
                if (str2.equals("Location")) {
                    this.f6289c.q(g());
                } else if (str2.equals("Bucket")) {
                    this.f6289c.f(g());
                } else if (str2.equals("Key")) {
                    this.f6289c.n(g());
                } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                    this.f6289c.g(ServiceUtils.e(g()));
                }
            } else if (l("Error")) {
                if (str2.equals("Code")) {
                    this.f6293g = g();
                } else if (str2.equals("Message")) {
                    this.f6290d = new AmazonS3Exception(g());
                } else if (str2.equals("RequestId")) {
                    this.f6292f = g();
                } else if (str2.equals("HostId")) {
                    this.f6291e = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void d(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f6289c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.d(str);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (a() && str2.equals("CompleteMultipartUploadResult")) {
                this.f6289c = new CompleteMultipartUploadResult();
            }
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void i(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f6289c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.i(str);
            }
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void j(Date date) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f6289c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.j(date);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult m() {
            return this.f6289c;
        }

        public AmazonS3Exception n() {
            return this.f6290d;
        }

        public CompleteMultipartUploadResult o() {
            return this.f6289c;
        }
    }

    /* loaded from: classes2.dex */
    public static class CopyObjectResultHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

        /* renamed from: c  reason: collision with root package name */
        private final CopyObjectResult f6294c = new CopyObjectResult();

        /* renamed from: d  reason: collision with root package name */
        private String f6295d = null;

        /* renamed from: e  reason: collision with root package name */
        private String f6296e = null;

        /* renamed from: f  reason: collision with root package name */
        private String f6297f = null;

        /* renamed from: g  reason: collision with root package name */
        private String f6298g = null;

        /* renamed from: h  reason: collision with root package name */
        private boolean f6299h = false;

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void b(boolean z10) {
            this.f6294c.b(z10);
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (!l("CopyObjectResult") && !l("CopyPartResult")) {
                if (l("Error")) {
                    if (str2.equals("Code")) {
                        this.f6295d = g();
                    } else if (str2.equals("Message")) {
                        this.f6296e = g();
                    } else if (str2.equals("RequestId")) {
                        this.f6297f = g();
                    } else if (str2.equals("HostId")) {
                        this.f6298g = g();
                    }
                }
            } else if (str2.equals("LastModified")) {
                this.f6294c.g(ServiceUtils.c(g()));
            } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                this.f6294c.f(ServiceUtils.e(g()));
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void d(String str) {
            this.f6294c.d(str);
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (a()) {
                if (!str2.equals("CopyObjectResult") && !str2.equals("CopyPartResult")) {
                    if (str2.equals("Error")) {
                        this.f6299h = true;
                        return;
                    }
                    return;
                }
                this.f6299h = false;
            }
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void i(String str) {
            this.f6294c.i(str);
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void j(Date date) {
            this.f6294c.j(date);
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult m() {
            return this.f6294c;
        }
    }

    /* loaded from: classes2.dex */
    public static class DeleteObjectsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final DeleteObjectsResponse f6300c = new DeleteObjectsResponse();

        /* renamed from: d  reason: collision with root package name */
        private DeleteObjectsResult$DeletedObject f6301d = null;

        /* renamed from: e  reason: collision with root package name */
        private MultiObjectDeleteException.DeleteError f6302e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f6300c.a().add(this.f6301d);
                    this.f6301d = null;
                } else if (str2.equals("Error")) {
                    this.f6300c.c().add(this.f6302e);
                    this.f6302e = null;
                }
            } else if (l("DeleteResult", "Deleted")) {
                if (str2.equals("Key")) {
                    this.f6301d.e(g());
                } else if (str2.equals("VersionId")) {
                    this.f6301d.f(g());
                } else if (str2.equals("DeleteMarker")) {
                    this.f6301d.b(g().equals("true"));
                } else if (str2.equals("DeleteMarkerVersionId")) {
                    this.f6301d.d(g());
                }
            } else if (l("DeleteResult", "Error")) {
                if (str2.equals("Key")) {
                    this.f6302e.b(g());
                } else if (str2.equals("VersionId")) {
                    this.f6302e.d(g());
                } else if (str2.equals("Code")) {
                    this.f6302e.a(g());
                } else if (str2.equals("Message")) {
                    this.f6302e.c(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f6301d = new DeleteObjectsResult$DeletedObject();
                } else if (str2.equals("Error")) {
                    this.f6302e = new MultiObjectDeleteException.DeleteError();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class GetBucketAnalyticsConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final AnalyticsConfiguration f6303c = new AnalyticsConfiguration();

        /* renamed from: d  reason: collision with root package name */
        private AnalyticsFilter f6304d;

        /* renamed from: e  reason: collision with root package name */
        private List<AnalyticsFilterPredicate> f6305e;

        /* renamed from: f  reason: collision with root package name */
        private StorageClassAnalysis f6306f;

        /* renamed from: g  reason: collision with root package name */
        private StorageClassAnalysisDataExport f6307g;

        /* renamed from: h  reason: collision with root package name */
        private AnalyticsExportDestination f6308h;

        /* renamed from: i  reason: collision with root package name */
        private AnalyticsS3BucketDestination f6309i;

        /* renamed from: j  reason: collision with root package name */
        private String f6310j;

        /* renamed from: k  reason: collision with root package name */
        private String f6311k;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6303c.d(g());
                } else if (str2.equals("Filter")) {
                    this.f6303c.b(this.f6304d);
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.f6303c.e(this.f6306f);
                }
            } else if (l("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6304d.b(new AnalyticsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6304d.b(new AnalyticsTagPredicate(new Tag(this.f6310j, this.f6311k)));
                    this.f6310j = null;
                    this.f6311k = null;
                } else if (str2.equals("And")) {
                    this.f6304d.b(new AnalyticsAndOperator(this.f6305e));
                    this.f6305e = null;
                }
            } else if (l("AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6310j = g();
                } else if (str2.equals("Value")) {
                    this.f6311k = g();
                }
            } else if (l("AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f6305e.add(new AnalyticsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6305e.add(new AnalyticsTagPredicate(new Tag(this.f6310j, this.f6311k)));
                    this.f6310j = null;
                    this.f6311k = null;
                }
            } else if (l("AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6310j = g();
                } else if (str2.equals("Value")) {
                    this.f6311k = g();
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f6306f.b(this.f6307g);
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f6307g.d(g());
                } else if (str2.equals("Destination")) {
                    this.f6307g.b(this.f6308h);
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f6308h.b(this.f6309i);
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals(SubInfo.KEY_FORMAT)) {
                    this.f6309i.e(g());
                } else if (str2.equals("BucketAccountId")) {
                    this.f6309i.b(g());
                } else if (str2.equals("Bucket")) {
                    this.f6309i.d(g());
                } else if (str2.equals("Prefix")) {
                    this.f6309i.f(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f6304d = new AnalyticsFilter();
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.f6306f = new StorageClassAnalysis();
                }
            } else if (l("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f6305e = new ArrayList();
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f6307g = new StorageClassAnalysisDataExport();
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f6308h = new AnalyticsExportDestination();
                }
            } else if (l("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f6309i = new AnalyticsS3BucketDestination();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class GetBucketInventoryConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final GetBucketInventoryConfigurationResult f6312c = new GetBucketInventoryConfigurationResult();

        /* renamed from: d  reason: collision with root package name */
        private final InventoryConfiguration f6313d = new InventoryConfiguration();

        /* renamed from: e  reason: collision with root package name */
        private List<String> f6314e;

        /* renamed from: f  reason: collision with root package name */
        private InventoryDestination f6315f;

        /* renamed from: g  reason: collision with root package name */
        private InventoryFilter f6316g;

        /* renamed from: h  reason: collision with root package name */
        private InventoryS3BucketDestination f6317h;

        /* renamed from: i  reason: collision with root package name */
        private InventorySchedule f6318i;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6313d.e(g());
                } else if (str2.equals("Destination")) {
                    this.f6313d.b(this.f6315f);
                    this.f6315f = null;
                } else if (str2.equals("IsEnabled")) {
                    this.f6313d.d(Boolean.valueOf("true".equals(g())));
                } else if (str2.equals("Filter")) {
                    this.f6313d.g(this.f6316g);
                    this.f6316g = null;
                } else if (str2.equals("IncludedObjectVersions")) {
                    this.f6313d.f(g());
                } else if (str2.equals("Schedule")) {
                    this.f6313d.i(this.f6318i);
                    this.f6318i = null;
                } else if (str2.equals("OptionalFields")) {
                    this.f6313d.h(this.f6314e);
                    this.f6314e = null;
                }
            } else if (l("InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f6315f.b(this.f6317h);
                    this.f6317h = null;
                }
            } else if (l("InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f6317h.b(g());
                } else if (str2.equals("Bucket")) {
                    this.f6317h.d(g());
                } else if (str2.equals(SubInfo.KEY_FORMAT)) {
                    this.f6317h.e(g());
                } else if (str2.equals("Prefix")) {
                    this.f6317h.f(g());
                }
            } else if (l("InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6316g.b(new InventoryPrefixPredicate(g()));
                }
            } else if (l("InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f6318i.b(g());
                }
            } else if (l("InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f6314e.add(g());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("InventoryConfiguration")) {
                if (str2.equals("Destination")) {
                    this.f6315f = new InventoryDestination();
                } else if (str2.equals("Filter")) {
                    this.f6316g = new InventoryFilter();
                } else if (str2.equals("Schedule")) {
                    this.f6318i = new InventorySchedule();
                } else if (str2.equals("OptionalFields")) {
                    this.f6314e = new ArrayList();
                }
            } else if (l("InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                this.f6317h = new InventoryS3BucketDestination();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class GetBucketMetricsConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final MetricsConfiguration f6319c = new MetricsConfiguration();

        /* renamed from: d  reason: collision with root package name */
        private MetricsFilter f6320d;

        /* renamed from: e  reason: collision with root package name */
        private List<MetricsFilterPredicate> f6321e;

        /* renamed from: f  reason: collision with root package name */
        private String f6322f;

        /* renamed from: g  reason: collision with root package name */
        private String f6323g;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6319c.d(g());
                } else if (str2.equals("Filter")) {
                    this.f6319c.b(this.f6320d);
                    this.f6320d = null;
                }
            } else if (l("MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6320d.b(new MetricsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6320d.b(new MetricsTagPredicate(new Tag(this.f6322f, this.f6323g)));
                    this.f6322f = null;
                    this.f6323g = null;
                } else if (str2.equals("And")) {
                    this.f6320d.b(new MetricsAndOperator(this.f6321e));
                    this.f6321e = null;
                }
            } else if (l("MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6322f = g();
                } else if (str2.equals("Value")) {
                    this.f6323g = g();
                }
            } else if (l("MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f6321e.add(new MetricsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6321e.add(new MetricsTagPredicate(new Tag(this.f6322f, this.f6323g)));
                    this.f6322f = null;
                    this.f6323g = null;
                }
            } else if (l("MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6322f = g();
                } else if (str2.equals("Value")) {
                    this.f6323g = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f6320d = new MetricsFilter();
                }
            } else if (l("MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f6321e = new ArrayList();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class GetObjectTaggingHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private GetObjectTaggingResult f6324c;

        /* renamed from: d  reason: collision with root package name */
        private List<Tag> f6325d;

        /* renamed from: e  reason: collision with root package name */
        private String f6326e;

        /* renamed from: f  reason: collision with root package name */
        private String f6327f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("Tagging") && str2.equals("TagSet")) {
                this.f6324c = new GetObjectTaggingResult(this.f6325d);
                this.f6325d = null;
            }
            if (l("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    this.f6325d.add(new Tag(this.f6327f, this.f6326e));
                    this.f6327f = null;
                    this.f6326e = null;
                }
            } else if (l("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6327f = g();
                } else if (str2.equals("Value")) {
                    this.f6326e = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("Tagging") && str2.equals("TagSet")) {
                this.f6325d = new ArrayList();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListAllMyBucketsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final List<Bucket> f6329c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private Owner f6330d = null;

        /* renamed from: e  reason: collision with root package name */
        private Bucket f6331e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListAllMyBucketsResult", "Owner")) {
                if (str2.equals("ID")) {
                    this.f6330d.f(g());
                } else if (str2.equals("DisplayName")) {
                    this.f6330d.e(g());
                }
            } else if (l("ListAllMyBucketsResult", "Buckets")) {
                if (str2.equals("Bucket")) {
                    this.f6329c.add(this.f6331e);
                    this.f6331e = null;
                }
            } else if (l("ListAllMyBucketsResult", "Buckets", "Bucket")) {
                if (str2.equals("Name")) {
                    this.f6331e.g(g());
                } else if (str2.equals("CreationDate")) {
                    this.f6331e.f(DateUtils.h(g()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListAllMyBucketsResult")) {
                if (str2.equals("Owner")) {
                    this.f6330d = new Owner();
                }
            } else if (l("ListAllMyBucketsResult", "Buckets") && str2.equals("Bucket")) {
                Bucket bucket = new Bucket();
                this.f6331e = bucket;
                bucket.h(this.f6330d);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListBucketAnalyticsConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final ListBucketAnalyticsConfigurationsResult f6332c = new ListBucketAnalyticsConfigurationsResult();

        /* renamed from: d  reason: collision with root package name */
        private AnalyticsConfiguration f6333d;

        /* renamed from: e  reason: collision with root package name */
        private AnalyticsFilter f6334e;

        /* renamed from: f  reason: collision with root package name */
        private List<AnalyticsFilterPredicate> f6335f;

        /* renamed from: g  reason: collision with root package name */
        private StorageClassAnalysis f6336g;

        /* renamed from: h  reason: collision with root package name */
        private StorageClassAnalysisDataExport f6337h;

        /* renamed from: i  reason: collision with root package name */
        private AnalyticsExportDestination f6338i;

        /* renamed from: j  reason: collision with root package name */
        private AnalyticsS3BucketDestination f6339j;

        /* renamed from: k  reason: collision with root package name */
        private String f6340k;

        /* renamed from: l  reason: collision with root package name */
        private String f6341l;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    if (this.f6332c.b() == null) {
                        this.f6332c.d(new ArrayList());
                    }
                    this.f6332c.b().add(this.f6333d);
                    this.f6333d = null;
                } else if (str2.equals("IsTruncated")) {
                    this.f6332c.g("true".equals(g()));
                } else if (str2.equals("ContinuationToken")) {
                    this.f6332c.e(g());
                } else if (str2.equals("NextContinuationToken")) {
                    this.f6332c.f(g());
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6333d.d(g());
                } else if (str2.equals("Filter")) {
                    this.f6333d.b(this.f6334e);
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.f6333d.e(this.f6336g);
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6334e.b(new AnalyticsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6334e.b(new AnalyticsTagPredicate(new Tag(this.f6340k, this.f6341l)));
                    this.f6340k = null;
                    this.f6341l = null;
                } else if (str2.equals("And")) {
                    this.f6334e.b(new AnalyticsAndOperator(this.f6335f));
                    this.f6335f = null;
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6340k = g();
                } else if (str2.equals("Value")) {
                    this.f6341l = g();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f6335f.add(new AnalyticsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6335f.add(new AnalyticsTagPredicate(new Tag(this.f6340k, this.f6341l)));
                    this.f6340k = null;
                    this.f6341l = null;
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6340k = g();
                } else if (str2.equals("Value")) {
                    this.f6341l = g();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f6336g.b(this.f6337h);
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f6337h.d(g());
                } else if (str2.equals("Destination")) {
                    this.f6337h.b(this.f6338i);
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f6338i.b(this.f6339j);
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals(SubInfo.KEY_FORMAT)) {
                    this.f6339j.e(g());
                } else if (str2.equals("BucketAccountId")) {
                    this.f6339j.b(g());
                } else if (str2.equals("Bucket")) {
                    this.f6339j.d(g());
                } else if (str2.equals("Prefix")) {
                    this.f6339j.f(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    this.f6333d = new AnalyticsConfiguration();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f6334e = new AnalyticsFilter();
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.f6336g = new StorageClassAnalysis();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f6335f = new ArrayList();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f6337h = new StorageClassAnalysisDataExport();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f6338i = new AnalyticsExportDestination();
                }
            } else if (l("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f6339j = new AnalyticsS3BucketDestination();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListBucketHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f6342c;

        /* renamed from: d  reason: collision with root package name */
        private S3ObjectSummary f6343d;

        /* renamed from: e  reason: collision with root package name */
        private Owner f6344e;

        /* renamed from: f  reason: collision with root package name */
        private String f6345f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (a()) {
                if (str2.equals("ListBucketResult")) {
                    throw null;
                }
            } else if (l("ListBucketResult")) {
                if (!str2.equals("Name")) {
                    if (str2.equals("Prefix")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6342c);
                        throw null;
                    } else if (str2.equals("Marker")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6342c);
                        throw null;
                    } else if (str2.equals("NextMarker")) {
                        XmlResponsesSaxParser.g(g(), this.f6342c);
                        throw null;
                    } else if (str2.equals("MaxKeys")) {
                        XmlResponsesSaxParser.k(g());
                        throw null;
                    } else if (str2.equals("Delimiter")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6342c);
                        throw null;
                    } else if (str2.equals("EncodingType")) {
                        XmlResponsesSaxParser.f(g());
                        throw null;
                    } else if (str2.equals("IsTruncated")) {
                        String b10 = StringUtils.b(g());
                        if (!b10.startsWith("false")) {
                            if (b10.startsWith("true")) {
                                throw null;
                            }
                            throw new IllegalStateException("Invalid value for IsTruncated field: " + b10);
                        }
                        throw null;
                    } else if (str2.equals("Contents")) {
                        throw null;
                    } else {
                        return;
                    }
                }
                g();
                throw null;
            } else if (l("ListBucketResult", "Contents")) {
                if (str2.equals("Key")) {
                    String g10 = g();
                    this.f6345f = g10;
                    this.f6343d.b(XmlResponsesSaxParser.g(g10, this.f6342c));
                } else if (str2.equals("LastModified")) {
                    this.f6343d.c(ServiceUtils.c(g()));
                } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                    this.f6343d.a(ServiceUtils.e(g()));
                } else if (str2.equals("Size")) {
                    this.f6343d.e(XmlResponsesSaxParser.l(g()));
                } else if (str2.equals("StorageClass")) {
                    this.f6343d.f(g());
                } else if (str2.equals("Owner")) {
                    this.f6343d.d(this.f6344e);
                    this.f6344e = null;
                }
            } else if (l("ListBucketResult", "Contents", "Owner")) {
                if (str2.equals("ID")) {
                    this.f6344e.f(g());
                } else if (str2.equals("DisplayName")) {
                    this.f6344e.e(g());
                }
            } else if (l("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                throw null;
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListBucketResult")) {
                if (str2.equals("Contents")) {
                    this.f6343d = new S3ObjectSummary();
                    throw null;
                }
            } else if (l("ListBucketResult", "Contents") && str2.equals("Owner")) {
                this.f6344e = new Owner();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListBucketInventoryConfigurationsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final ListBucketInventoryConfigurationsResult f6346c = new ListBucketInventoryConfigurationsResult();

        /* renamed from: d  reason: collision with root package name */
        private InventoryConfiguration f6347d;

        /* renamed from: e  reason: collision with root package name */
        private List<String> f6348e;

        /* renamed from: f  reason: collision with root package name */
        private InventoryDestination f6349f;

        /* renamed from: g  reason: collision with root package name */
        private InventoryFilter f6350g;

        /* renamed from: h  reason: collision with root package name */
        private InventoryS3BucketDestination f6351h;

        /* renamed from: i  reason: collision with root package name */
        private InventorySchedule f6352i;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    if (this.f6346c.b() == null) {
                        this.f6346c.e(new ArrayList());
                    }
                    this.f6346c.b().add(this.f6347d);
                    this.f6347d = null;
                } else if (str2.equals("IsTruncated")) {
                    this.f6346c.g("true".equals(g()));
                } else if (str2.equals("ContinuationToken")) {
                    this.f6346c.d(g());
                } else if (str2.equals("NextContinuationToken")) {
                    this.f6346c.f(g());
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6347d.e(g());
                } else if (str2.equals("Destination")) {
                    this.f6347d.b(this.f6349f);
                    this.f6349f = null;
                } else if (str2.equals("IsEnabled")) {
                    this.f6347d.d(Boolean.valueOf("true".equals(g())));
                } else if (str2.equals("Filter")) {
                    this.f6347d.g(this.f6350g);
                    this.f6350g = null;
                } else if (str2.equals("IncludedObjectVersions")) {
                    this.f6347d.f(g());
                } else if (str2.equals("Schedule")) {
                    this.f6347d.i(this.f6352i);
                    this.f6352i = null;
                } else if (str2.equals("OptionalFields")) {
                    this.f6347d.h(this.f6348e);
                    this.f6348e = null;
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f6349f.b(this.f6351h);
                    this.f6351h = null;
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f6351h.b(g());
                } else if (str2.equals("Bucket")) {
                    this.f6351h.d(g());
                } else if (str2.equals(SubInfo.KEY_FORMAT)) {
                    this.f6351h.e(g());
                } else if (str2.equals("Prefix")) {
                    this.f6351h.f(g());
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6350g.b(new InventoryPrefixPredicate(g()));
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f6352i.b(g());
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f6348e.add(g());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    this.f6347d = new InventoryConfiguration();
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals("Destination")) {
                    this.f6349f = new InventoryDestination();
                } else if (str2.equals("Filter")) {
                    this.f6350g = new InventoryFilter();
                } else if (str2.equals("Schedule")) {
                    this.f6352i = new InventorySchedule();
                } else if (str2.equals("OptionalFields")) {
                    this.f6348e = new ArrayList();
                }
            } else if (l("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                this.f6351h = new InventoryS3BucketDestination();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListBucketMetricsConfigurationsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final ListBucketMetricsConfigurationsResult f6353c = new ListBucketMetricsConfigurationsResult();

        /* renamed from: d  reason: collision with root package name */
        private MetricsConfiguration f6354d;

        /* renamed from: e  reason: collision with root package name */
        private MetricsFilter f6355e;

        /* renamed from: f  reason: collision with root package name */
        private List<MetricsFilterPredicate> f6356f;

        /* renamed from: g  reason: collision with root package name */
        private String f6357g;

        /* renamed from: h  reason: collision with root package name */
        private String f6358h;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    if (this.f6353c.b() == null) {
                        this.f6353c.e(new ArrayList());
                    }
                    this.f6353c.b().add(this.f6354d);
                    this.f6354d = null;
                } else if (str2.equals("IsTruncated")) {
                    this.f6353c.g("true".equals(g()));
                } else if (str2.equals("ContinuationToken")) {
                    this.f6353c.d(g());
                } else if (str2.equals("NextContinuationToken")) {
                    this.f6353c.f(g());
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f6354d.d(g());
                } else if (str2.equals("Filter")) {
                    this.f6354d.b(this.f6355e);
                    this.f6355e = null;
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f6355e.b(new MetricsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6355e.b(new MetricsTagPredicate(new Tag(this.f6357g, this.f6358h)));
                    this.f6357g = null;
                    this.f6358h = null;
                } else if (str2.equals("And")) {
                    this.f6355e.b(new MetricsAndOperator(this.f6356f));
                    this.f6356f = null;
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6357g = g();
                } else if (str2.equals("Value")) {
                    this.f6358h = g();
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f6356f.add(new MetricsPrefixPredicate(g()));
                } else if (str2.equals("Tag")) {
                    this.f6356f.add(new MetricsTagPredicate(new Tag(this.f6357g, this.f6358h)));
                    this.f6357g = null;
                    this.f6358h = null;
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f6357g = g();
                } else if (str2.equals("Value")) {
                    this.f6358h = g();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    this.f6354d = new MetricsConfiguration();
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f6355e = new MetricsFilter();
                }
            } else if (l("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f6356f = new ArrayList();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListMultipartUploadsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final MultipartUploadListing f6359c = new MultipartUploadListing();

        /* renamed from: d  reason: collision with root package name */
        private MultipartUpload f6360d;

        /* renamed from: e  reason: collision with root package name */
        private Owner f6361e;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListMultipartUploadsResult")) {
                if (str2.equals("Bucket")) {
                    this.f6359c.c(g());
                } else if (str2.equals("KeyMarker")) {
                    this.f6359c.f(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("Delimiter")) {
                    this.f6359c.d(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("Prefix")) {
                    this.f6359c.j(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("UploadIdMarker")) {
                    this.f6359c.l(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("NextKeyMarker")) {
                    this.f6359c.h(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("NextUploadIdMarker")) {
                    this.f6359c.i(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("MaxUploads")) {
                    this.f6359c.g(Integer.parseInt(g()));
                } else if (str2.equals("EncodingType")) {
                    this.f6359c.e(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("IsTruncated")) {
                    this.f6359c.k(Boolean.parseBoolean(g()));
                } else if (str2.equals("Upload")) {
                    this.f6359c.b().add(this.f6360d);
                    this.f6360d = null;
                }
            } else if (l("ListMultipartUploadsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    this.f6359c.a().add(g());
                }
            } else if (l("ListMultipartUploadsResult", "Upload")) {
                if (str2.equals("Key")) {
                    this.f6360d.c(g());
                } else if (str2.equals("UploadId")) {
                    this.f6360d.f(g());
                } else if (str2.equals("Owner")) {
                    this.f6360d.d(this.f6361e);
                    this.f6361e = null;
                } else if (str2.equals("Initiator")) {
                    this.f6360d.b(this.f6361e);
                    this.f6361e = null;
                } else if (str2.equals("StorageClass")) {
                    this.f6360d.e(g());
                } else if (str2.equals("Initiated")) {
                    this.f6360d.a(ServiceUtils.c(g()));
                }
            } else if (l("ListMultipartUploadsResult", "Upload", "Owner") || l("ListMultipartUploadsResult", "Upload", "Initiator")) {
                if (str2.equals("ID")) {
                    this.f6361e.f(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("DisplayName")) {
                    this.f6361e.e(XmlResponsesSaxParser.f(g()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListMultipartUploadsResult")) {
                if (str2.equals("Upload")) {
                    this.f6360d = new MultipartUpload();
                }
            } else if (l("ListMultipartUploadsResult", "Upload")) {
                if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f6361e = new Owner();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListObjectsV2Handler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f6362c;

        /* renamed from: d  reason: collision with root package name */
        private S3ObjectSummary f6363d;

        /* renamed from: e  reason: collision with root package name */
        private Owner f6364e;

        /* renamed from: f  reason: collision with root package name */
        private String f6365f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (a()) {
                if (str2.equals("ListBucketResult")) {
                    throw null;
                }
            } else if (l("ListBucketResult")) {
                if (!str2.equals("Name")) {
                    if (str2.equals("Prefix")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6362c);
                        throw null;
                    } else if (str2.equals("MaxKeys")) {
                        XmlResponsesSaxParser.k(g());
                        throw null;
                    } else if (!str2.equals("NextContinuationToken")) {
                        if (!str2.equals("ContinuationToken")) {
                            if (str2.equals("StartAfter")) {
                                XmlResponsesSaxParser.g(g(), this.f6362c);
                                throw null;
                            } else if (str2.equals("KeyCount")) {
                                XmlResponsesSaxParser.k(g());
                                throw null;
                            } else if (str2.equals("Delimiter")) {
                                XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6362c);
                                throw null;
                            } else if (str2.equals("EncodingType")) {
                                XmlResponsesSaxParser.f(g());
                                throw null;
                            } else if (str2.equals("IsTruncated")) {
                                String b10 = StringUtils.b(g());
                                if (!b10.startsWith("false")) {
                                    if (b10.startsWith("true")) {
                                        throw null;
                                    }
                                    throw new IllegalStateException("Invalid value for IsTruncated field: " + b10);
                                }
                                throw null;
                            } else if (str2.equals("Contents")) {
                                throw null;
                            } else {
                                return;
                            }
                        }
                        g();
                        throw null;
                    } else {
                        g();
                        throw null;
                    }
                }
                g();
                throw null;
            } else if (l("ListBucketResult", "Contents")) {
                if (str2.equals("Key")) {
                    String g10 = g();
                    this.f6365f = g10;
                    this.f6363d.b(XmlResponsesSaxParser.g(g10, this.f6362c));
                } else if (str2.equals("LastModified")) {
                    this.f6363d.c(ServiceUtils.c(g()));
                } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                    this.f6363d.a(ServiceUtils.e(g()));
                } else if (str2.equals("Size")) {
                    this.f6363d.e(XmlResponsesSaxParser.l(g()));
                } else if (str2.equals("StorageClass")) {
                    this.f6363d.f(g());
                } else if (str2.equals("Owner")) {
                    this.f6363d.d(this.f6364e);
                    this.f6364e = null;
                }
            } else if (l("ListBucketResult", "Contents", "Owner")) {
                if (str2.equals("ID")) {
                    this.f6364e.f(g());
                } else if (str2.equals("DisplayName")) {
                    this.f6364e.e(g());
                }
            } else if (l("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                throw null;
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListBucketResult")) {
                if (str2.equals("Contents")) {
                    this.f6363d = new S3ObjectSummary();
                    throw null;
                }
            } else if (l("ListBucketResult", "Contents") && str2.equals("Owner")) {
                this.f6364e = new Owner();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListPartsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final PartListing f6366c = new PartListing();

        /* renamed from: d  reason: collision with root package name */
        private PartSummary f6367d;

        /* renamed from: e  reason: collision with root package name */
        private Owner f6368e;

        private Integer m(String str) {
            String f10 = XmlResponsesSaxParser.f(g());
            if (f10 == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(f10));
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListPartsResult")) {
                if (str2.equals("Bucket")) {
                    this.f6366c.c(g());
                } else if (str2.equals("Key")) {
                    this.f6366c.f(g());
                } else if (str2.equals("UploadId")) {
                    this.f6366c.m(g());
                } else if (str2.equals("Owner")) {
                    this.f6366c.i(this.f6368e);
                    this.f6368e = null;
                } else if (str2.equals("Initiator")) {
                    this.f6366c.e(this.f6368e);
                    this.f6368e = null;
                } else if (str2.equals("StorageClass")) {
                    this.f6366c.k(g());
                } else if (str2.equals("PartNumberMarker")) {
                    this.f6366c.j(m(g()).intValue());
                } else if (str2.equals("NextPartNumberMarker")) {
                    this.f6366c.h(m(g()).intValue());
                } else if (str2.equals("MaxParts")) {
                    this.f6366c.g(m(g()).intValue());
                } else if (str2.equals("EncodingType")) {
                    this.f6366c.d(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("IsTruncated")) {
                    this.f6366c.l(Boolean.parseBoolean(g()));
                } else if (str2.equals("Part")) {
                    this.f6366c.a().add(this.f6367d);
                    this.f6367d = null;
                }
            } else if (l("ListPartsResult", "Part")) {
                if (str2.equals("PartNumber")) {
                    this.f6367d.c(Integer.parseInt(g()));
                } else if (str2.equals("LastModified")) {
                    this.f6367d.b(ServiceUtils.c(g()));
                } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                    this.f6367d.a(ServiceUtils.e(g()));
                } else if (str2.equals("Size")) {
                    this.f6367d.d(Long.parseLong(g()));
                }
            } else if (l("ListPartsResult", "Owner") || l("ListPartsResult", "Initiator")) {
                if (str2.equals("ID")) {
                    this.f6368e.f(XmlResponsesSaxParser.f(g()));
                } else if (str2.equals("DisplayName")) {
                    this.f6368e.e(XmlResponsesSaxParser.f(g()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListPartsResult")) {
                if (str2.equals("Part")) {
                    this.f6367d = new PartSummary();
                } else if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f6368e = new Owner();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ListVersionsHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f6369c;

        /* renamed from: d  reason: collision with root package name */
        private S3VersionSummary f6370d;

        /* renamed from: e  reason: collision with root package name */
        private Owner f6371e;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("ListVersionsResult")) {
                if (!str2.equals("Name")) {
                    if (str2.equals("Prefix")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6369c);
                        throw null;
                    } else if (str2.equals("KeyMarker")) {
                        XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6369c);
                        throw null;
                    } else if (str2.equals("VersionIdMarker")) {
                        XmlResponsesSaxParser.f(g());
                        throw null;
                    } else if (!str2.equals("MaxKeys")) {
                        if (str2.equals("Delimiter")) {
                            XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6369c);
                            throw null;
                        } else if (str2.equals("EncodingType")) {
                            XmlResponsesSaxParser.f(g());
                            throw null;
                        } else if (str2.equals("NextKeyMarker")) {
                            XmlResponsesSaxParser.g(XmlResponsesSaxParser.f(g()), this.f6369c);
                            throw null;
                        } else if (!str2.equals("NextVersionIdMarker")) {
                            if (!str2.equals("IsTruncated")) {
                                if (str2.equals("Version") || str2.equals("DeleteMarker")) {
                                    throw null;
                                }
                                return;
                            }
                            "true".equals(g());
                            throw null;
                        } else {
                            g();
                            throw null;
                        }
                    } else {
                        Integer.parseInt(g());
                        throw null;
                    }
                }
                g();
                throw null;
            } else if (l("ListVersionsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    XmlResponsesSaxParser.f(g());
                    throw null;
                }
            } else if (!l("ListVersionsResult", "Version") && !l("ListVersionsResult", "DeleteMarker")) {
                if (l("ListVersionsResult", "Version", "Owner") || l("ListVersionsResult", "DeleteMarker", "Owner")) {
                    if (str2.equals("ID")) {
                        this.f6371e.f(g());
                    } else if (str2.equals("DisplayName")) {
                        this.f6371e.e(g());
                    }
                }
            } else if (str2.equals("Key")) {
                this.f6370d.c(XmlResponsesSaxParser.g(g(), this.f6369c));
            } else if (str2.equals("VersionId")) {
                this.f6370d.h(g());
            } else if (str2.equals("IsLatest")) {
                this.f6370d.b("true".equals(g()));
            } else if (str2.equals("LastModified")) {
                this.f6370d.d(ServiceUtils.c(g()));
            } else if (str2.equals(Command.HTTP_HEADER_ETAG)) {
                this.f6370d.a(ServiceUtils.e(g()));
            } else if (str2.equals("Size")) {
                this.f6370d.f(Long.parseLong(g()));
            } else if (str2.equals("Owner")) {
                this.f6370d.e(this.f6371e);
                this.f6371e = null;
            } else if (str2.equals("StorageClass")) {
                this.f6370d.g(g());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
            if (l("ListVersionsResult")) {
                if (!str2.equals("Version")) {
                    if (str2.equals("DeleteMarker")) {
                        this.f6370d = new S3VersionSummary();
                        throw null;
                    }
                    return;
                }
                this.f6370d = new S3VersionSummary();
                throw null;
            } else if ((l("ListVersionsResult", "Version") || l("ListVersionsResult", "DeleteMarker")) && str2.equals("Owner")) {
                this.f6371e = new Owner();
            }
        }
    }

    public XmlResponsesSaxParser() throws AmazonClientException {
        this.f6253a = null;
        try {
            this.f6253a = XMLReaderFactory.createXMLReader();
        } catch (SAXException e10) {
            System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
            try {
                this.f6253a = XMLReaderFactory.createXMLReader();
            } catch (SAXException unused) {
                throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(String str, boolean z10) {
        if (z10) {
            return S3HttpUtils.a(str);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(String str, Attributes attributes) {
        if (!StringUtils.a(str) && attributes != null) {
            for (int i10 = 0; i10 < attributes.getLength(); i10++) {
                if (attributes.getQName(i10).trim().equalsIgnoreCase(str.trim())) {
                    return attributes.getValue(i10);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            Log log = f6252c;
            log.b("Unable to parse integer value '" + str + "'", e10);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long l(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e10) {
            Log log = f6252c;
            log.b("Unable to parse long value '" + str + "'", e10);
            return -1L;
        }
    }

    public CompleteMultipartUploadHandler i(InputStream inputStream) throws IOException {
        CompleteMultipartUploadHandler completeMultipartUploadHandler = new CompleteMultipartUploadHandler();
        m(completeMultipartUploadHandler, inputStream);
        return completeMultipartUploadHandler;
    }

    public InitiateMultipartUploadHandler j(InputStream inputStream) throws IOException {
        InitiateMultipartUploadHandler initiateMultipartUploadHandler = new InitiateMultipartUploadHandler();
        m(initiateMultipartUploadHandler, inputStream);
        return initiateMultipartUploadHandler;
    }

    protected void m(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        try {
            Log log = f6252c;
            if (log.i()) {
                log.h("Parsing XML response document with handler: " + defaultHandler.getClass());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            this.f6253a.setContentHandler(defaultHandler);
            this.f6253a.setErrorHandler(defaultHandler);
            this.f6253a.parse(new InputSource(bufferedReader));
        } catch (IOException e10) {
            throw e10;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException e11) {
                if (f6252c.e()) {
                    f6252c.b("Unable to close response InputStream up after XML parse failure", e11);
                }
            }
            throw new AmazonClientException("Failed to parse XML document with handler " + defaultHandler.getClass(), th2);
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketAccelerateConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketAccelerateConfiguration f6258c = new BucketAccelerateConfiguration(null);

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("AccelerateConfiguration") && str2.equals("Status")) {
                this.f6258c.a(g());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketLocationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private String f6274c = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (a() && str2.equals("LocationConstraint")) {
                String g10 = g();
                if (g10.length() == 0) {
                    this.f6274c = null;
                } else {
                    this.f6274c = g10;
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketLoggingConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketLoggingConfiguration f6275c = new BucketLoggingConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("BucketLoggingStatus", "LoggingEnabled")) {
                if (str2.equals("TargetBucket")) {
                    this.f6275c.f(g());
                } else if (str2.equals("TargetPrefix")) {
                    this.f6275c.g(g());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }

    /* loaded from: classes2.dex */
    public static class BucketVersioningConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final BucketVersioningConfiguration f6284c = new BucketVersioningConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("VersioningConfiguration")) {
                if (str2.equals("Status")) {
                    this.f6284c.d(g());
                } else if (str2.equals("MfaDelete")) {
                    String g10 = g();
                    if (g10.equals("Disabled")) {
                        this.f6284c.b(Boolean.FALSE);
                    } else if (g10.equals("Enabled")) {
                        this.f6284c.b(Boolean.TRUE);
                    } else {
                        this.f6284c.b(null);
                    }
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }

    /* loaded from: classes2.dex */
    public static class InitiateMultipartUploadHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private final InitiateMultipartUploadResult f6328c = new InitiateMultipartUploadResult();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("InitiateMultipartUploadResult")) {
                if (str2.equals("Bucket")) {
                    this.f6328c.g(g());
                } else if (str2.equals("Key")) {
                    this.f6328c.n(g());
                } else if (str2.equals("UploadId")) {
                    this.f6328c.q(g());
                }
            }
        }

        public InitiateMultipartUploadResult m() {
            return this.f6328c;
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }

    /* loaded from: classes2.dex */
    public static class RequestPaymentConfigurationHandler extends AbstractHandler {

        /* renamed from: c  reason: collision with root package name */
        private String f6372c = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3) {
            if (l("RequestPaymentConfiguration") && str2.equals("Payer")) {
                this.f6372c = g();
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void f(String str, String str2, String str3, Attributes attributes) {
        }
    }
}
